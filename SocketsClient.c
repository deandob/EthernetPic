/*********************************************************************
 *
 *  Berekely TCP lient demo application.
 *  This application uses the BSD socket APIs and start a client
 *
 *********************************************************************
 * FileName:        BerkeleyTCPClientDemo.c
 * Company:         Microchip Technology, Inc.
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.05 or higher
 *					Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
 *					HI-TECH PICC-18 PRO 9.63PL2 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2009 Microchip Technology Inc.  All rights
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and
 * distribute:
 * (i)  the Software when embedded on a Microchip microcontroller or
 *      digital signal controller product ("Device") which is
 *      integrated into Licensee's product; or
 * (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
 *		ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device
 *		used in conjunction with a Microchip ethernet controller for
 *		the sole purpose of interfacing with the ethernet controller.
 *
 * You should refer to the license agreement accompanying this
 * Software for additional information regarding your rights and
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 * Author               Date    	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Aseem Swalah         4/17/08  	Original
 ********************************************************************/

#include "TCPIPConfig.h" 

#if defined(STACK_USE_BERKELEY_API)

#include "TCPIP Stack/TCPIP.h"
#include "AppNetCfg.h"

#define MQTTCONNECT     1 << 4  // Client request to connect to Server
#define MQTTCONNACK     2 << 4  // Connect Acknowledgment
#define MQTTPUBLISH     3 << 4  // Publish message
#define MQTTPUBACK      4 << 4  // Publish Acknowledgment
#define MQTTPUBREC      5 << 4  // Publish Received (assured delivery part 1)
#define MQTTPUBREL      6 << 4  // Publish Release (assured delivery part 2)
#define MQTTPUBCOMP     7 << 4  // Publish Complete (assured delivery part 3)
//#define MQTTSUBSCRIBE   8 << 4  // Client Subscribe request
#define MQTTSUBACK      9 << 4  // Subscribe Acknowledgment
#define MQTTUNSUBSCRIBE 10 << 4 // Client Unsubscribe request
#define MQTTUNSUBACK    11 << 4 // Unsubscribe Acknowledgment
#define MQTTPINGREQ     12 << 4 // PING Request
#define MQTTPINGRESP    13 << 4 // PING Response
#define MQTTDISCONNECT  14 << 4 // Client is Disconnecting
#define MQTTReserved    15 << 4 // Reserved
#define MQTT_DUP        1 << 3  // Duplicate publish message flag
#define MQTT_QOS        0 << 1  // QoS message flag
#define MQTT_RETAIN     1 << 0  // Retain message flag (yes, as Server will automatically retain)
#define MQTTSUBSCRIBE   0x82    // Subscribe bits + reserve bits set
//#define MQTT_PUB_HEADER     (MQTTPUBLISH) | (MQTT_DUP) | (MQTT_QOS) | (MQTT_RETAIN)
#define MQTT_PUB_HEADER     0x31    // MQTT Publish with retain
//#define MQTT_PUB_HEADER     B'00110000'    // MQTT Publish with retain
#define MQTT_CONN_FLAGS     0x02    // Clean Session, QoS = 0, no user/pwd
#define MQTT_KEEPALIVE_HI   0x00    // Highbyte for keep alive, 7 seconds
#define MQTT_KEEPALIVE_LO   0x07    // Low byte for keep alive, 7 seconds
#define MQTT_FIXEDHEAD_FUNC 0x00    // Byte in header buffer that stores the message function
#define MQTT_FIXEDHEAD_LEN  0x01    // Start Byte in header buffer for length of packet
//#define MQTT_RECV_CONNACK   0x01
#define MQTT_DISCONNECTED   0x00
#define MQTT_WAIT_CONN        0x01
#define MQTT_WAIT_SUBACK    0x02
#define MQTT_CONNECTED      0x03

    static SOCKET bsdClientSocket = UNKNOWN_SOCKET;
   
    char sendBuf[130];              // Packet size max 128
    BYTE MQTTState = MQTT_DISCONNECTED;
    char SubTopic[] = SUBSCRIBE_TOPIC;                          // can't be rom due to shared function
    rom const char ConnVarHeader[] = {0x00,0x04,'M','Q','T','T',0x04,MQTT_CONN_FLAGS,MQTT_KEEPALIVE_HI,MQTT_KEEPALIVE_LO};
    rom const char SubVarHeader[] = {0x00, 0x00};
    rom const char PubTopic[] = PUBLISH_TOPIC;
    rom const char ConnAck[] = {MQTTCONNACK, 0x02, 0x00, 0x00};          // No session, connection successful
    rom const char SubAck[] = {MQTTSUBACK, 0x03, 0x00, 0x00, 0x00};           // Packet ID 0, QoS 0
    rom const char PingAck[] = {MQTTPINGRESP, 0x00};                    // Server responded to ping

    static WORD PingCntr = 0;
    static WORD PingWait = 0;
    
int sendMQTT(unsigned char MQTTfunc, rom char* varHeader, unsigned char varSize, char* payload, unsigned char paySize);
int MQTTSubscribe(char* topic, unsigned char size);

BYTE CalcFixedHeader(WORD len);
    
// Send to server (socket number, string array)
int SendStr(SOCKET SvrSock, const char* String[]) {
    return send(SvrSock, (const char*)String, strlen((char*)String), 0);
}

// Send to server (socket number, WORD)
int SendInt(SOCKET SvrSock, char* byteArr[], BYTE len) {
//    union {
//        WORD myInt;
//        BYTE myByte[2];
//    } conv;
//    conv.myInt = myWord;
    return send(SvrSock, (char*)byteArr, len, 0);
}

/*********************************************************************
 * Function:        void BerkeleyTCPClientDemo(void)
 *
 * PreCondition:    Stack is initialized()
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
SOCKET StartSocketsClient(const char *ServerName, WORD Portnum) {
#if defined(STACK_USE_DNS)
///    static SOCKET bsdClientSocket = UNKNOWN_SOCKET;
    static struct sockaddr_in addr;
    char recvBuffer[128];
    char ClientID[] = NODE_NAME;
    int i;
    int addrlen;
    BOOL retVal;

    static enum
    {
        DNS_START_RESOLUTION = 0,
        DNS_GET_RESULT,
        BSD_START,
        BSD_CONNECT,
        MQTT_CONNECT,
        BSD_OPERATION,
        BSD_CLOSE,
        BSD_DONE
    } BSDClientState = DNS_START_RESOLUTION;

    if (!DHCPIsBound(0))                    // wait for DHCP address
        return UNKNOWN_SOCKET;

    switch(BSDClientState)
    {
	    case DNS_START_RESOLUTION:                
	    	if(DNSBeginUsage())
	    	{
		    	DNSResolveROM(ServerName, DNS_TYPE_A); 
		    	BSDClientState = DNS_GET_RESULT;
		    }
	    	break;
	    
	    case DNS_GET_RESULT:
	    	if(!DNSIsResolved((IP_ADDR*)&addr.sin_addr.S_un.S_addr))
	    		break;
	    		
	    	if(!DNSEndUsage()) {              // unresolved
                if (USE_DEFAULT_SVR_IP_IF_NO_DNS) {
                    // No DNS, use the server address instead
                    addr.sin_addr.S_un.S_un_b.s_b1 = DEFAULT_SVR_IP_ADDR_BYTE1;
                    addr.sin_addr.S_un.S_un_b.s_b2 = DEFAULT_SVR_IP_ADDR_BYTE2;
                    addr.sin_addr.S_un.S_un_b.s_b3 = DEFAULT_SVR_IP_ADDR_BYTE3;
                    addr.sin_addr.S_un.S_un_b.s_b4 = DEFAULT_SVR_IP_ADDR_BYTE4;
                } else {
                    BSDClientState = BSD_DONE;
                    break;
                }
		    }

	    	BSDClientState = BSD_START;
	    	// No break; here.
	    
        case BSD_START:
            // Create a socket for this client to connect with
            if((bsdClientSocket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == INVALID_SOCKET )
                return INVALID_SOCKET;
            BSDClientState = BSD_CONNECT;
            break;

        case BSD_CONNECT:
            // addr.sin_addr.S_un.S_addr destination IP address was set earlier in DNS step
            addr.sin_port = Portnum;
            addrlen = sizeof(struct sockaddr);

            if (connect(bsdClientSocket, (struct sockaddr*)&addr, addrlen) < 0)
            	return INVALID_SOCKET;

            BSDClientState = MQTT_CONNECT;
            // No break needed

        case MQTT_CONNECT:
            sendMQTT(MQTTCONNECT, ConnVarHeader, sizeof(ConnVarHeader), ClientID, sizeof(ClientID) - 1);
            BSDClientState = BSD_OPERATION;
            MQTTState = MQTT_WAIT_CONN;
            break;

        case BSD_OPERATION:
            i = recv(bsdClientSocket, recvBuffer, sizeof(recvBuffer)-1, 0); //get the data from the recv queue, i = number of bytes
            if (i < 0) {//error condition, disconnect socket
                //SOCKET_DISCONNECTED
                BSDClientState = BSD_CLOSE;
                break;
            } else {
                if (i > 0) {
                    switch (MQTTState) {
                        case MQTT_WAIT_CONN:
                            if (memcmppgm2ram((void*)recvBuffer, (const rom void*)ConnAck, sizeof(ConnAck)) == 0) {
                                MQTTState = MQTT_CONNECTED;
                                PingCntr = 1;
                                if (sizeof(SubTopic) > 0) {
                                    MQTTSubscribe(SubTopic, sizeof(SubTopic) - 1);
                                    MQTTState = MQTT_WAIT_SUBACK;
                                }
                            }
                            break;
                        case MQTT_WAIT_SUBACK:
                            if (memcmppgm2ram((void*)recvBuffer, (const rom void*)SubAck, sizeof(SubAck)) == 0) {
                                MQTTState = MQTT_CONNECTED;
                            }
                            break;
                        case MQTT_CONNECTED:            // process incoming packets
                            if (memcmppgm2ram((void*)recvBuffer, (const rom void*)PingAck, sizeof(PingAck)) == 0) {
                                PingWait = 0;
                                PingCntr = 1;           // Start ping cycle again
                                LATBbits.LATB3 = 1;     // Light LED with session
                            }
                            break;
                    }
                } else {
                    if (PingCntr > 0) {                 // Start ping timer
                            //LATBbits.LATB3 = 1;
                        if (PingCntr == 65535) {
                            sendMQTT(MQTTPINGREQ, PubTopic, 0, dataSend, 0);        // Ping header
                            PingCntr = 0;
                            PingWait = 1;           // start wait timer
                        } else {
                            PingCntr++;
                        }  
                    }
                    if (PingWait > 0) {
                        if (PingWait == 65535) {                    
                            sendMQTT(MQTTPINGREQ, PubTopic, 0, dataSend, 0);        // Ping header
                            PingWait = 0;                           // turn off counters          
                            PingCntr = 0;
                            BSDClientState = BSD_CLOSE;             // Timed out on ping, reset connection & try again
                        } else {
                            PingWait++;
                        }  
                    }
                }
            }                      
            return bsdClientSocket;
         
        case BSD_CLOSE:
            closesocket(bsdClientSocket);
            BSDClientState = BSD_DONE;
            LATBbits.LATB3 = 0;
            MQTTState = MQTT_DISCONNECTED;
            // No break needed
            
        case BSD_DONE:
            BSDClientState = DNS_START_RESOLUTION;          // Start again
            return UNKNOWN_SOCKET;
    }
#else
    #warning You must define STACK_USE_DNS for BerkeleyTCPClientDemo to work
#endif
}

// Use sendBuf to store data
int publish(char* topic, unsigned char topicSize, unsigned char bufSize) {
    return sendMQTT(MQTT_PUB_HEADER, topic, topicSize - 1, dataSend, bufSize);
}

int MQTTSubscribe(char* topic, unsigned char size) {
    sendMQTT(MQTTSUBSCRIBE, SubVarHeader, sizeof(SubVarHeader), topic, size);
    MQTTState = MQTT_WAIT_SUBACK;
}

int sendMQTT(unsigned char MQTTfunc, rom char* varHeader, unsigned char varSize, char* payload, unsigned char paySize) {
    unsigned char i;
    BYTE buffLoc = 2;
    if (MQTTfunc == MQTT_PUB_HEADER) {
        sendBuf[buffLoc++] = 0x00; // Add UTF-8 string for topic, first MSB/LSB size
        sendBuf[buffLoc++] = varSize;
    }
    for (i = 0; i < varSize; i++) {
        sendBuf[buffLoc++] = varHeader[i];
    }
    if ((MQTTfunc == MQTTCONNECT) | (MQTTfunc == MQTTSUBSCRIBE)) {
        sendBuf[buffLoc++] = 0x00; // Add UTF-8 string for topic, first MSB/LSB size
        sendBuf[buffLoc++] = paySize; // payload can only be 255 bytes
    }
    for (i = 0; i < paySize; i++) {
        sendBuf[buffLoc++] = payload[i];
    }
    if ((MQTTfunc == MQTTSUBSCRIBE)) {
        sendBuf[buffLoc++] = 0; // QoS 0
    }
    sendBuf[0] = MQTTfunc;
    sendBuf[1] = buffLoc - 2; // Size of MQTT packet not including fixed header and including
    return SendInt(bsdClientSocket, (char *) sendBuf, buffLoc);
}

#endif //#if defined(STACK_USE_BERKELEY_API)

