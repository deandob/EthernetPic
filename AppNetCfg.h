/* 
 * File:   AppNetCfg.h
 * Author: Dean
 *
 * Created on 7 May 2016, 11:03 AM
 */

#ifndef APPNETCFG_H
#define	APPNETCFG_H

#ifdef	__cplusplus
extern "C" {
#endif

#define MQTT_PORT                   1883
    
#define NODE_NAME                   "TANK"

#define USE_DEFAULT_SVR_IP_IF_NO_DNS    1
  
#define NOP                             _asm NOP _endasm
    
#define ABS(x) ((x) > 0 ? (x) : -(x))

#define SERVER_NAME "HOMESERVER"                    // resolved with DNS
#define DEFAULT_SVR_IP_ADDR_BYTE1   (192ul)    // Use if no DNS
#define DEFAULT_SVR_IP_ADDR_BYTE2   (168ul)
#define DEFAULT_SVR_IP_ADDR_BYTE3   (0ul)
#define DEFAULT_SVR_IP_ADDR_BYTE4   (2ul)

#define PUBLISH_TOPIC               "UTILITIES/WATER/TANK/LEVEL"
#define SUBSCRIBE_TOPIC             "UTILITIES/WATER/TANK/SETTINGS"

    
#define MAX_CHANGE                  5           // Igore big changes 
int publish(char* topic, unsigned char topicSize, unsigned char BufSize);

extern char dataSend[5];                    // Global data storage to send
extern char dataRecv[5];    

#ifdef	__cplusplus
}
#endif

#endif	/* APPNETCFG_H */

