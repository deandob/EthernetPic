/*********************************************************************
 *
 *  Main Application Entry Point and TCP/IP Stack Demo
 *  Module for Microchip TCP/IP Stack
 *   -Demonstrates how to call and use the Microchip TCP/IP stack
 *	 -Reference: Microchip TCP/IP Stack Help (TCPIP Stack Help.chm)
 *
 *********************************************************************
 * FileName:        Main.c
 * Dependencies:    TCPIP.h
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.11b or higher
 *					Microchip C30 v3.24 or higher
 *					Microchip C18 v3.36 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2010 Microchip Technology Inc.  All rights
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
 *
 * Author              Date         Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Nilesh Rajbharti		4/19/01		Original (Rev. 1.0)
 * Nilesh Rajbharti		2/09/02		Cleanup
 * Nilesh Rajbharti		5/22/02		Rev 2.0 (See version.log for detail)
 * Nilesh Rajbharti		7/9/02		Rev 2.1 (See version.log for detail)
 * Nilesh Rajbharti		4/7/03		Rev 2.11.01 (See version log for detail)
 * Howard Schlunder		10/1/04		Beta Rev 0.9 (See version log for detail)
 * Howard Schlunder		10/8/04		Beta Rev 0.9.1 Announce support added
 * Howard Schlunder		11/29/04	Beta Rev 0.9.2 (See version log for detail)
 * Howard Schlunder		2/10/05		Rev 2.5.0
 * Howard Schlunder		1/5/06		Rev 3.00
 * Howard Schlunder		1/18/06		Rev 3.01 ENC28J60 fixes to TCP, 
 *									UDP and ENC28J60 files
 * Howard Schlunder		3/01/06		Rev. 3.16 including 16-bit micro support
 * Howard Schlunder		4/12/06		Rev. 3.50 added LCD for Explorer 16
 * Howard Schlunder		6/19/06		Rev. 3.60 finished dsPIC30F support, added PICDEM.net 2 support
 * Howard Schlunder		8/02/06		Rev. 3.75 added beta DNS, NBNS, and HTTP client (GenericTCPClient.c) services
 * Howard Schlunder		12/28/06	Rev. 4.00RC added SMTP, Telnet, substantially modified TCP layer
 * Howard Schlunder		04/09/07	Rev. 4.02 added TCPPerformanceTest, UDPPerformanceTest, Reboot and fixed some bugs
 * Howard Schlunder		xx/xx/07	Rev. 4.03
 * HSchlunder & EWood	08/27/07	Rev. 4.11
 * HSchlunder & EWood	10/08/07	Rev. 4.13
 * HSchlunder & EWood	11/06/07	Rev. 4.16
 * HSchlunder & EWood	11/08/07	Rev. 4.17
 * HSchlunder & EWood	11/12/07	Rev. 4.18
 * HSchlunder & EWood	02/11/08	Rev. 4.19
 * HSchlunder & EWood   04/26/08    Rev. 4.50 Moved most code to other files for clarity
 * KHesky               07/07/08    Added ZG2100-specific support
 * HSchlunder & EWood   07/24/08    Rev. 4.51
 * Howard Schlunder		11/10/08    Rev. 4.55
 * Howard Schlunder		04/14/09    Rev. 5.00
 * Howard Schlunder		07/10/09    Rev. 5.10
 * Howard Schlunder		11/18/09    Rev. 5.20
 * Howard Schlunder		04/28/10    Rev. 5.25
 * Howard Schlunder		10/19/10	Rev. 5.31
 ********************************************************************/
/*
 * This macro uniquely defines this file as the main entry point.
 * There should only be one such definition in the entire project,
 * and this file must define the AppConfig variable as described below.
 */
#define THIS_IS_STACK_APPLICATION

// configuration bits
#pragma config WDT=OFF, FOSC2=ON, FOSC=HSPLL, ETHLED=ON, XINST=OFF
//#pragma idata OLEDBUF                                   // See lkr linker file for dedicated buffer space

// Include all headers for any enabled TCPIP Stack functions
#include "TCPIP Stack/TCPIP.h"

#include "oled.h"

#if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
#include "TCPIP Stack/ZeroconfLinkLocal.h"
#endif
#if defined(STACK_USE_ZEROCONF_MDNS_SD)
#include "TCPIP Stack/ZeroconfMulticastDNS.h"
#endif

// Include functions specific to this stack application
#include "Main.h"

#include "AppNetCfg.h"

// Declare AppConfig structure and some other supporting stack variables
APP_CONFIG AppConfig;
static unsigned short wOriginalAppConfigChecksum;	// Checksum of the ROM defaults for AppConfig
//BYTE AN0String[8];

//globals
char dataSend[5];                    // Data storage to send
char dataRecv[5];  

// tank sensor - NOTE PORTB pins 5, 6, 7 as inputs will trigger interrupt routine
#define PULSETRIG_TRIS TRISAbits.RA3
#define READDIST_TRIS TRISBbits.RB0
#define PULSETRIG LATAbits.LATA3                 // Use LAT for outputs
#define READDIST PORTBbits.RB0                   // Use PORT for inputs

#define ASCII_0 48

    union {
        int myInt;
        unsigned char myByte[2];
    } distance;

BYTE oldDistance = 255;
BYTE calcDistance = 0;
BYTE dummy;

// Private functions.
static void InitAppConfig(void);
static void InitializeBoard(void);
static void ProcessIO(void);
static void OLEDInit(void);
static void IntercomInit(void);
static void getSample(void);
static void PWMOut(unsigned char);
static void initTankSensor(void);
static void TankPulse(void);

static unsigned char ADResult;


/* static const rom unsigned char sine[] = {
128,131,134,137,140,143,146,149,
 152,156,159,162,165,168,171,174,
 176,179,182,185,188,191,193,196,
 199,201,204,206,209,211,213,216,
 218,220,222,224,226,228,230,232,
 234,235,237,239,240,242,243,244,
 246,247,248,249,250,251,251,252,
 253,253,254,254,254,255,255,255,
 255,255,255,255,254,254,253,253,
 252,252,251,250,249,248,247,246,
 245,244,242,241,239,238,236,235,
 233,231,229,227,225,223,221,219,
 217,215,212,210,207,205,202,200,
 197,195,192,189,186,184,181,178,
 175,172,169,166,163,160,157,154,
 151,148,145,142,138,135,132,129,
 126,123,120,117,113,110,107,104,
 101,98,95,92,89,86,83,80,
 77,74,71,69,66,63,60,58,
 55,53,50,48,45,43,40,38,
 36,34,32,30,28,26,24,22,
 20,19,17,16,14,13,11,10,
 9,8,7,6,5,4,3,3,
 2,2,1,1,0,0,0,0,
 0,0,0,1,1,1,2,2,
 3,4,4,5,6,7,8,9,
 11,12,13,15,16,18,20,21,
 23,25,27,29,31,33,35,37,
 39,42,44,46,49,51,54,56,
 59,62,64,67,70,73,76,79,
 81,84,87,90,93,96,99,103,
 106,109,112,115,118,121,124,128
};*/

        union {
        int myInt;
        unsigned char myByte[2];
    } PWMXord;

    SOCKET SvrSock = UNKNOWN_SOCKET;

    static BYTE SendArr[] = "I'm here";
    unsigned char SendBuf[2] = {33, 44};

//
// PIC18 Interrupt Service Routines
// 
// NOTE: Several PICs, including the PIC18F4620 revision A3 have a RETFIE FAST/MOVFF bug
// The interruptlow keyword is used to work around the bug when using C18
#if defined(__18CXX)
	#if defined(HI_TECH_C)
	void interrupt low_priority LowISR(void)
	#else
	#pragma interruptlow LowISR
	void LowISR(void)
	#endif
{
    if (PIR1bits.TMR1IF) {
        TMR1H = 254;
        TMR1L = 0;
        PIR1bits.TMR1IF = 0; // clear to enable next interrupt
    } else {
        TickUpdate();
    }
}
	
	#if defined(HI_TECH_C)
	void interrupt HighISR(void)
	#else
	#pragma interruptlow HighISR
	void HighISR(void)
#endif
{

    //if (INTCONbits.RBIF) {              // PORTB changed
    if (INTCONbits.INT0IF == 1) { // INT0 changed

        if (READDIST == 1) { // INT0 just gone high. Distance measure timer starting
            // LATBbits.LATB3 = 1;
            T3CONbits.TMR3ON = 1; // start counting
            INTCON2bits.INTEDG0 = 0; // Change to falling edge
        } else {
            // LATBbits.LATB3 = 0;
            T3CONbits.TMR3ON = 0; // disable timer
            distance.myByte[0] = TMR3L; // Always load low first so high gets loaded into TMR3H buffer. 1mSec to 8 mSec. 1.28uS per increment. 1ms = 781, 8ms = 6250
            distance.myByte[1] = TMR3H; 
            //// 150uSec to 25msec, 38msec if no obsticle. Pulse width uSec / 58 = distance in cm. Convert timer rate 1.3Mhz (Osc / 4 / prescaler 8) to uSec = /75
            TMR3H = 0;
            TMR3L = 0; // Always write to TMR3L last to copy TMR3H buffer to the timer
            INTCON2bits.INTEDG0 = 1; // Change to rising edge
        }
        dummy = PORTB; // dummy read as per datasheet
        INTCONbits.INT0IF = 0; // clear interrupt to reenable
    }
}

	#if !defined(HI_TECH_C)
	#pragma code lowVector=0x18
	void LowVector(void){_asm goto LowISR _endasm}
	#pragma code highVector=0x8
	void HighVector(void){_asm goto HighISR _endasm}
	#pragma code // Return to default code section
	#endif

//
// Main application entry point.
//
#if defined(__18CXX)
void main(void)
#else
int main(void)
#endif
{
	static DWORD t = 0;
    static int netState;
    static char dataIndex = 0;
    static char lastSpurious = FALSE;

    // Set all ports to output and off by default
    TRISA = TRISOUT;
    TRISB = TRISOUT;
    TRISC = TRISOUT;
    TRISD = TRISOUT;
    LATA = OFF;
    LATB = OFF;
    LATC = OFF;
    LATD = OFF;

    BOARDSW_TRIS = TRISINP;
    //        BOARDAUXPWR = OFF;

    // Initialize application specific hardware
    InitializeBoard();

    OLEDInit();

    // Initialize stack-related hardware components that may be 
    // required by the UART configuration routines
    TickInit();

        // Initialize Stack and application related NV variables into AppConfig.
    InitAppConfig();

    initTankSensor();

	// Initialize core stack layers (MAC, ARP, TCP, UDP) and
	// application modules (HTTP, SNMP, etc.)
    StackInit();

//    BOARDAUXPWR = ON;


	// Now that all items are initialized, begin the co-operative
	// multitasking loop.  This infinite loop will continuously 
	// execute all stack-related tasks, as well as your own
	// application's functions.  Custom functions should be added
	// at the end of this loop.
    // Note that this is a "co-operative mult-tasking" mechanism
    // where every task performs its tasks (whether all in one shot
    // or part of it) and returns so that other tasks can do their
    // job.
    // If a task needs very long time to do its job, it must be broken
    // down into smaller pieces so that other tasks can have CPU time.
    while(1)
    {
        if(TickGet() - t >= TICK_SECOND)
        {
            t = TickGet();

            // Tank sensor
            calcDistance = (WORD)distance.myInt / 128;
            if (calcDistance < 12) calcDistance = 12;         // not accurate under 200mm, so use a 200mm offset
            if (calcDistance > 112) calcDistance = 112;         // 99 is maximum
            calcDistance = 111 - calcDistance;
            
            if (calcDistance != oldDistance) {
                if (ABS(calcDistance - oldDistance) < MAX_CHANGE || lastSpurious == TRUE) {
                    OLED_writenum(calcDistance);
                    if (calcDistance > 9) {
                        dataSend[0] = calcDistance / 10; // encode decimal as string
                        dataSend[1] = calcDistance - (dataSend[0] * 10);
                        dataIndex = 1;
                    } else {
                        dataSend[0] = calcDistance;
                        dataIndex = 0;
                    }
                    dataSend[0] = ASCII_0 + dataSend[0];
                    dataSend[1] = ASCII_0 + dataSend[1];
                    netState = publish(PUBLISH_TOPIC, sizeof (PUBLISH_TOPIC), dataIndex + 1);
                    //SendInt(SvrSock, (char *)distance.myByte, 2);
                    //SendStr(SvrSock, (const char *)SendArr);
                    oldDistance = calcDistance;                    
                    lastSpurious = FALSE;
                } else {
                    lastSpurious = TRUE;
                }
            } else {
                if (netState == -1) netState = publish(PUBLISH_TOPIC, sizeof(PUBLISH_TOPIC), dataIndex + 1);       // Try publishing again if network was down last cycle
            }
            
            TankPulse();                // start reading
        }
            
         if (BOARDSW == LOW)             // Normally high, goes low when pressed
        {
        }
        else
        {
             //BOARDLED = OFF;
        } 

        // This task performs normal stack task including checking
        // for incoming packet, type of packet and calling
        // appropriate stack entity to process it.
        StackTask();

        // This tasks invokes each of the core stack application tasks
        StackApplications();

		// Process application specific tasks here.
		// For this demo app, this will include the Generic TCP 
		// client and servers, and the SNMP, Ping, and SNMP Trap
		// demos.  Following that, we will process any IO from
		// the inputs on the board itself.
		// Any custom modules or processing you need to do should
		// go here.
		//#if defined(STACK_USE_GENERIC_TCP_CLIENT_EXAMPLE)
		//GenericTCPClient();
		//#endif
		
		//#if defined(STACK_USE_GENERIC_TCP_SERVER_EXAMPLE)
		//GenericTCPServer();
		//#endif
		
		#if defined(STACK_USE_BERKELEY_API)
            SvrSock = StartSocketsClient((const char *)SERVER_NAME, MQTT_PORT);
            
            if (SvrSock < UNKNOWN_SOCKET) {         // action once connected (called each loop)
                //SendStr(SvrSock, (const char *)SendArr);
            }

                
                //BerkeleyTCPServerDemo();
		//BerkeleyUDPClientDemo();
		#endif

		ProcessIO();
	}
}

void initTankSensor(void) {
    PULSETRIG_TRIS = TRISOUT;          // output
    READDIST_TRIS = TRISINP;          // input
    INTCON2bits.RBPU = 0;               // Enable portB pullups for any inputs
    INTCONbits.RBIE = 0;                // PortB7:4 interrupt on change
    INTCONbits.INT0IE = 1;          // Enable INT0 RB0 interrupt
    INTCON2bits.INTEDG0 = 1;        // INT0 interrupt on rising edge
    INTCONbits.INT0IF = 0;          // Clear INT0 flag
    INTCON2bits.RBIP = 1;           // high priority interrupt
    T3CONbits.RD16 = 1;         // 16 bit timer
    T3CONbits.T3CKPS = 0b11;    // 1:8 prescaler, each tick is 768nS to a max of 50mSec.
    T3CONbits.TMR3CS = 0;       // Internal clock, clock / 4 = 0.16uS
    TMR3H = 0;
    TMR3L = 0;                  // Always write to TMR3L last to copy TMR3H buffer to the timer
    distance.myInt = 0;
}

void TankPulse(void) {
    PULSETRIG = ON;
    Delay10us(1);       // start trigger pulse
    PULSETRIG = OFF;
}

static void IntercomInit(void) {

    TRISAbits.RA3 = TRISINP;        // set RA3 / AN3 as input

    ADCON1bits.PCFG = 0b1011;   // AN3

    ADCON2bits.ADFM     = 0;  // left justify the output
    ADCON2bits.ACQT     = 0b010;// 4 TAD
    ADCON2bits.ADCS     = 0b110;// use Fosc/64 for clock source

    ADCON0bits.ADCAL = 0;       // Calibrate at turn on
    ADCON0bits.CHS = 0b0011;   // AN3 as input channel
    ADCON0bits.ADON = 1;

    ADResult = 0;

    TRISGbits.RG4 = TRISOUT;        // PWM output pin
    PR4 = 0b01010000;
    T4CON = 0b00000101;
    //PR4 = 80;                        // TMR4 8K period for PWM with 16 prescaler
    //T4CONbits.T4CKPS = 0b10;         // TMR4 16 prescale
    //T4CONbits.TMR4ON = 0b1;          // On  ???????????? Needed
    CCP5CONbits.CCP5M = 0b1100;     // select PWM mode
    T3CONbits.T3CCP1 = 0b1;
    T3CONbits.T3CCP2 = 0b1;         // Select TMR4 for PWM
    //PWMOut(128);

    // Initialize timer 1 to count up 1302 times to overflow (subtract from 65535)
    TMR1H = 254;
    TMR1L = 0;
	// Set up the timer interrupt
    PIE1bits.TMR1IE = 1;        // enable interrupt
    PIR1bits.TMR1IF = 0;         // clear to enable next interrupt
    IPR1bits.TMR1IP = 0;        // low priority
    // Timer1 on, 16-bit, internal timer, 1:1 prescalar
    T1CON = 0b00000001;

}

static void PWMOut(unsigned char PWMChar) {
    // with 8K sampling, PMW range 0% - 100% goes from 0 to 323 (PR2 converted to 10 bits), so need to multiply byte by 1.267 to reach full range
    union {
        int myInt;
        unsigned char myByte[2];
    } PWMWord;

    //PWMWord.myInt = (int)((int)PWMChar * (float)1.267 + 0.5) << 6;  // value is 10 bits, so get MSB by rotating 6 bits
    
     PWMWord.myInt = (PWMChar * 5, PROD) << 4 ;    // 5 / 4 = 1.25 approx 1.257 then shift left 6 bytes = / 64. 64 / 4 = 16. Much faster than float but can't reach 255 OK though
    //PWMWord.myInt = (int)((int)PWMChar * (float)1.267 + 0.5) << 6;  // value is 10 bits, so get MSB by rotating 6 bits  651
    CCPR5L = PWMWord.myByte[1];
    CCP5CON = (PWMWord.myByte[0] >> 2) | 0b00001100;                // place LSB 2 most significant bits into bits 5 & 4 as per datasheet.
}

static void OLEDInit(void) {
    OLED_init();
   //OLED_writenum(56);
}

static void ProcessIO(void)
{
}

static void getSample(void) {
    // Wait until A/D conversion is done
   ADCON0bits.GO = 1;
   while(ADCON0bits.GO);
   //PWMOut(ADRESH);
   
    if (ADRESH != ADResult) {
        ADResult = ADRESH;
        //OLED_writenum(ADRESH / 2.56);
        //DelayMs(255);
    }
}

/****************************************************************************
  Function:
    static void InitializeBoard(void)

  Description:
    This routine initializes the hardware.  It is a generic initialization
    routine for many of the Microchip development boards, using definitions
    in HardwareProfile.h to determine specific initialization.

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
static void InitializeBoard(void)
{	

#if defined(__18CXX)
	// Enable 4x/5x/96MHz PLL on PIC18F87J10, PIC18F97J60, PIC18F87J50, etc.
    OSCTUNE = 0x40;             // 41.667Mhz

    // Enable internal PORTB pull-ups
    INTCON2bits.RBPU = 0;

	// Configure USART
    TXSTA = 0x20;
    RCSTA = 0x90;

	// See if we can use the high baud rate setting
	#if ((GetPeripheralClock()+2*BAUD_RATE)/BAUD_RATE/4 - 1) <= 255
		SPBRG = (GetPeripheralClock()+2*BAUD_RATE)/BAUD_RATE/4 - 1;
		TXSTAbits.BRGH = 1;
	#else	// Use the low baud rate setting
		SPBRG = (GetPeripheralClock()+8*BAUD_RATE)/BAUD_RATE/16 - 1;
	#endif


	// Enable Interrupts
	RCONbits.IPEN = 1;		// Enable interrupt priorities
    INTCONbits.GIEH = 1;
    INTCONbits.GIEL = 1;
    
#endif

}

/*********************************************************************
 * Function:        void InitAppConfig(void)
 *
 * PreCondition:    MPFSInit() is already called.
 *
 * Input:           None
 *
 * Output:          Write/Read non-volatile config variables.
 *
 * Side Effects:    None
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
// MAC Address Serialization using a MPLAB PM3 Programmer and 
// Serialized Quick Turn Programming (SQTP). 
// The advantage of using SQTP for programming the MAC Address is it
// allows you to auto-increment the MAC address without recompiling 
// the code for each unit.  To use SQTP, the MAC address must be fixed
// at a specific location in program memory.  Uncomment these two pragmas
// that locate the MAC address at 0x1FFF0.  Syntax below is for MPLAB C 
// Compiler for PIC18 MCUs. Syntax will vary for other compilers.
//#pragma romdata MACROM=0x1FFF0
static ROM BYTE SerializedMACAddress[6] = {MY_DEFAULT_MAC_BYTE1, MY_DEFAULT_MAC_BYTE2, MY_DEFAULT_MAC_BYTE3, MY_DEFAULT_MAC_BYTE4, MY_DEFAULT_MAC_BYTE5, MY_DEFAULT_MAC_BYTE6};
//#pragma romdata

static void InitAppConfig(void)
{
#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
	unsigned char vNeedToSaveDefaults = 1;
#endif
	
	while(1)
	{
		// Start out zeroing all AppConfig bytes to ensure all fields are 
		// deterministic for checksum generation
		memset((void*)&AppConfig, 0x00, sizeof(AppConfig));
		
		AppConfig.Flags.bIsDHCPEnabled = TRUE;
		AppConfig.Flags.bInConfigMode = TRUE;
		memcpypgm2ram((void*)&AppConfig.MyMACAddr, (ROM void*)SerializedMACAddress, sizeof(AppConfig.MyMACAddr));

                AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2<<8ul | MY_DEFAULT_IP_ADDR_BYTE3<<16ul | MY_DEFAULT_IP_ADDR_BYTE4<<24ul;
		AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
		AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2<<8ul | MY_DEFAULT_MASK_BYTE3<<16ul | MY_DEFAULT_MASK_BYTE4<<24ul;
		AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
		AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2<<8ul | MY_DEFAULT_GATE_BYTE3<<16ul | MY_DEFAULT_GATE_BYTE4<<24ul;
		AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2<<8ul  | MY_DEFAULT_PRIMARY_DNS_BYTE3<<16ul  | MY_DEFAULT_PRIMARY_DNS_BYTE4<<24ul;
		AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2<<8ul  | MY_DEFAULT_SECONDARY_DNS_BYTE3<<16ul  | MY_DEFAULT_SECONDARY_DNS_BYTE4<<24ul;
	
		// Load the default NetBIOS Host Name
		memcpypgm2ram(AppConfig.NetBIOSName, (ROM void*)MY_DEFAULT_HOST_NAME, 16);
		FormatNetBIOSName(AppConfig.NetBIOSName);
	
		// Compute the checksum of the AppConfig defaults as loaded from ROM
		wOriginalAppConfigChecksum = CalcIPChecksum((BYTE*)&AppConfig, sizeof(AppConfig));

		break;
	}
}

