#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TCPIP_Demo_App-C18.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TCPIP_Demo_App-C18.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/TFTPc.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Announce.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ARP.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Delay.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DHCP.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DHCPs.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DNS.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DynDNS.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ETH97J60.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/FTP.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Hashes.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Helpers.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/HTTP2.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/HTTP.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ICMP.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/IP.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/LCDBlocking.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/MPFS2.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/MPFS.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/NBNS.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Reboot.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SMTP.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SNMP.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SNTP.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SPIEEPROM.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/StackTsk.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/TCP.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/TCPPerformanceTest.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Telnet.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UDPPerformanceTest.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Tick.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UART2TCPBridge.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UART.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UDP.c" "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/MPFSImg.c" "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/MPFSImg2.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/BerkeleyAPI.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ARCFOUR.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/BigInt.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Random.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/RSA.c" "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SSL.c" "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/CustomHTTPApp.c" "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/LegacyHTTPApp.c" "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/Main.c" "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/oled.c" "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/SocketsClient.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1265958231/TFTPc.o ${OBJECTDIR}/_ext/1265958231/Announce.o ${OBJECTDIR}/_ext/1265958231/ARP.o ${OBJECTDIR}/_ext/1265958231/Delay.o ${OBJECTDIR}/_ext/1265958231/DHCP.o ${OBJECTDIR}/_ext/1265958231/DHCPs.o ${OBJECTDIR}/_ext/1265958231/DNS.o ${OBJECTDIR}/_ext/1265958231/DynDNS.o ${OBJECTDIR}/_ext/1265958231/ETH97J60.o ${OBJECTDIR}/_ext/1265958231/FTP.o ${OBJECTDIR}/_ext/1265958231/Hashes.o ${OBJECTDIR}/_ext/1265958231/Helpers.o ${OBJECTDIR}/_ext/1265958231/HTTP2.o ${OBJECTDIR}/_ext/1265958231/HTTP.o ${OBJECTDIR}/_ext/1265958231/ICMP.o ${OBJECTDIR}/_ext/1265958231/IP.o ${OBJECTDIR}/_ext/1265958231/LCDBlocking.o ${OBJECTDIR}/_ext/1265958231/MPFS2.o ${OBJECTDIR}/_ext/1265958231/MPFS.o ${OBJECTDIR}/_ext/1265958231/NBNS.o ${OBJECTDIR}/_ext/1265958231/Reboot.o ${OBJECTDIR}/_ext/1265958231/SMTP.o ${OBJECTDIR}/_ext/1265958231/SNMP.o ${OBJECTDIR}/_ext/1265958231/SNTP.o ${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o ${OBJECTDIR}/_ext/1265958231/StackTsk.o ${OBJECTDIR}/_ext/1265958231/TCP.o ${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1265958231/Telnet.o ${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1265958231/Tick.o ${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o ${OBJECTDIR}/_ext/1265958231/UART.o ${OBJECTDIR}/_ext/1265958231/UDP.o ${OBJECTDIR}/_ext/427802236/MPFSImg.o ${OBJECTDIR}/_ext/427802236/MPFSImg2.o ${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o ${OBJECTDIR}/_ext/1265958231/ARCFOUR.o ${OBJECTDIR}/_ext/1265958231/BigInt.o ${OBJECTDIR}/_ext/1265958231/Random.o ${OBJECTDIR}/_ext/1265958231/RSA.o ${OBJECTDIR}/_ext/1265958231/SSL.o ${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o ${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o ${OBJECTDIR}/_ext/427802236/Main.o ${OBJECTDIR}/_ext/427802236/oled.o ${OBJECTDIR}/_ext/427802236/SocketsClient.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1265958231/TFTPc.o.d ${OBJECTDIR}/_ext/1265958231/Announce.o.d ${OBJECTDIR}/_ext/1265958231/ARP.o.d ${OBJECTDIR}/_ext/1265958231/Delay.o.d ${OBJECTDIR}/_ext/1265958231/DHCP.o.d ${OBJECTDIR}/_ext/1265958231/DHCPs.o.d ${OBJECTDIR}/_ext/1265958231/DNS.o.d ${OBJECTDIR}/_ext/1265958231/DynDNS.o.d ${OBJECTDIR}/_ext/1265958231/ETH97J60.o.d ${OBJECTDIR}/_ext/1265958231/FTP.o.d ${OBJECTDIR}/_ext/1265958231/Hashes.o.d ${OBJECTDIR}/_ext/1265958231/Helpers.o.d ${OBJECTDIR}/_ext/1265958231/HTTP2.o.d ${OBJECTDIR}/_ext/1265958231/HTTP.o.d ${OBJECTDIR}/_ext/1265958231/ICMP.o.d ${OBJECTDIR}/_ext/1265958231/IP.o.d ${OBJECTDIR}/_ext/1265958231/LCDBlocking.o.d ${OBJECTDIR}/_ext/1265958231/MPFS2.o.d ${OBJECTDIR}/_ext/1265958231/MPFS.o.d ${OBJECTDIR}/_ext/1265958231/NBNS.o.d ${OBJECTDIR}/_ext/1265958231/Reboot.o.d ${OBJECTDIR}/_ext/1265958231/SMTP.o.d ${OBJECTDIR}/_ext/1265958231/SNMP.o.d ${OBJECTDIR}/_ext/1265958231/SNTP.o.d ${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o.d ${OBJECTDIR}/_ext/1265958231/StackTsk.o.d ${OBJECTDIR}/_ext/1265958231/TCP.o.d ${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/1265958231/Telnet.o.d ${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/1265958231/Tick.o.d ${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/1265958231/UART.o.d ${OBJECTDIR}/_ext/1265958231/UDP.o.d ${OBJECTDIR}/_ext/427802236/MPFSImg.o.d ${OBJECTDIR}/_ext/427802236/MPFSImg2.o.d ${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/1265958231/ARCFOUR.o.d ${OBJECTDIR}/_ext/1265958231/BigInt.o.d ${OBJECTDIR}/_ext/1265958231/Random.o.d ${OBJECTDIR}/_ext/1265958231/RSA.o.d ${OBJECTDIR}/_ext/1265958231/SSL.o.d ${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o.d ${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o.d ${OBJECTDIR}/_ext/427802236/Main.o.d ${OBJECTDIR}/_ext/427802236/oled.o.d ${OBJECTDIR}/_ext/427802236/SocketsClient.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1265958231/TFTPc.o ${OBJECTDIR}/_ext/1265958231/Announce.o ${OBJECTDIR}/_ext/1265958231/ARP.o ${OBJECTDIR}/_ext/1265958231/Delay.o ${OBJECTDIR}/_ext/1265958231/DHCP.o ${OBJECTDIR}/_ext/1265958231/DHCPs.o ${OBJECTDIR}/_ext/1265958231/DNS.o ${OBJECTDIR}/_ext/1265958231/DynDNS.o ${OBJECTDIR}/_ext/1265958231/ETH97J60.o ${OBJECTDIR}/_ext/1265958231/FTP.o ${OBJECTDIR}/_ext/1265958231/Hashes.o ${OBJECTDIR}/_ext/1265958231/Helpers.o ${OBJECTDIR}/_ext/1265958231/HTTP2.o ${OBJECTDIR}/_ext/1265958231/HTTP.o ${OBJECTDIR}/_ext/1265958231/ICMP.o ${OBJECTDIR}/_ext/1265958231/IP.o ${OBJECTDIR}/_ext/1265958231/LCDBlocking.o ${OBJECTDIR}/_ext/1265958231/MPFS2.o ${OBJECTDIR}/_ext/1265958231/MPFS.o ${OBJECTDIR}/_ext/1265958231/NBNS.o ${OBJECTDIR}/_ext/1265958231/Reboot.o ${OBJECTDIR}/_ext/1265958231/SMTP.o ${OBJECTDIR}/_ext/1265958231/SNMP.o ${OBJECTDIR}/_ext/1265958231/SNTP.o ${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o ${OBJECTDIR}/_ext/1265958231/StackTsk.o ${OBJECTDIR}/_ext/1265958231/TCP.o ${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1265958231/Telnet.o ${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1265958231/Tick.o ${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o ${OBJECTDIR}/_ext/1265958231/UART.o ${OBJECTDIR}/_ext/1265958231/UDP.o ${OBJECTDIR}/_ext/427802236/MPFSImg.o ${OBJECTDIR}/_ext/427802236/MPFSImg2.o ${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o ${OBJECTDIR}/_ext/1265958231/ARCFOUR.o ${OBJECTDIR}/_ext/1265958231/BigInt.o ${OBJECTDIR}/_ext/1265958231/Random.o ${OBJECTDIR}/_ext/1265958231/RSA.o ${OBJECTDIR}/_ext/1265958231/SSL.o ${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o ${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o ${OBJECTDIR}/_ext/427802236/Main.o ${OBJECTDIR}/_ext/427802236/oled.o ${OBJECTDIR}/_ext/427802236/SocketsClient.o

# Source Files
SOURCEFILES=../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/TFTPc.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Announce.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ARP.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Delay.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DHCP.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DHCPs.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DNS.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DynDNS.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ETH97J60.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/FTP.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Hashes.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Helpers.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/HTTP2.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/HTTP.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ICMP.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/IP.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/LCDBlocking.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/MPFS2.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/MPFS.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/NBNS.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Reboot.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SMTP.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SNMP.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SNTP.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SPIEEPROM.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/StackTsk.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/TCP.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/TCPPerformanceTest.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Telnet.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UDPPerformanceTest.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Tick.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UART2TCPBridge.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UART.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UDP.c ../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/MPFSImg.c ../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/MPFSImg2.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/BerkeleyAPI.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ARCFOUR.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/BigInt.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Random.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/RSA.c ../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SSL.c ../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/CustomHTTPApp.c ../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/LegacyHTTPApp.c ../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/Main.c ../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/oled.c ../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/SocketsClient.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/TCPIP_Demo_App-C18.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F66J60
MP_PROCESSOR_OPTION_LD=18f66j60
MP_LINKER_DEBUG_OPTION=  -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1265958231/TFTPc.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/TFTPc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/TFTPc.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/TFTPc.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/TFTPc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/TFTPc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Announce.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Announce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Announce.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Announce.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/ARP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ARP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/ARP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ARP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/ARP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/ARP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Delay.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Delay.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Delay.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/DHCP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DHCP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/DHCP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DHCP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/DHCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/DHCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/DHCPs.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DHCPs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/DHCPs.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DHCPs.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/DHCPs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/DHCPs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/DNS.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DNS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/DNS.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/DNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/DNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/DynDNS.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DynDNS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/DynDNS.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DynDNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/DynDNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/DynDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/ETH97J60.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ETH97J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ETH97J60.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/ETH97J60.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ETH97J60.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/ETH97J60.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/ETH97J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/FTP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/FTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/FTP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/FTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/FTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/FTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Hashes.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Hashes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Hashes.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Hashes.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Helpers.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Helpers.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Helpers.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/HTTP2.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/HTTP2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/HTTP2.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/HTTP2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/HTTP2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/HTTP2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/HTTP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/HTTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/HTTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/HTTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/HTTP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/HTTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/HTTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/HTTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/ICMP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ICMP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/ICMP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ICMP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/ICMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/ICMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/IP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/IP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/IP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/IP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/IP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/IP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/LCDBlocking.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/LCDBlocking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/LCDBlocking.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/LCDBlocking.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/MPFS2.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/MPFS2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/MPFS2.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/MPFS2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/MPFS2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/MPFS2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/MPFS.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/MPFS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/MPFS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/MPFS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/MPFS.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/MPFS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/MPFS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/MPFS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/NBNS.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/NBNS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/NBNS.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/NBNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/NBNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/NBNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Reboot.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Reboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Reboot.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Reboot.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Reboot.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Reboot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/SMTP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SMTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/SMTP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SMTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/SMTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/SMTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/SNMP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SNMP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/SNMP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SNMP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/SNMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/SNMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/SNTP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SNTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/SNTP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SNTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/SNTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/SNTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SPIEEPROM.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/StackTsk.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/StackTsk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/StackTsk.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/StackTsk.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/StackTsk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/StackTsk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/TCP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/TCP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/TCP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/TCP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/TCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/TCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/TCPPerformanceTest.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Telnet.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Telnet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Telnet.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Telnet.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Telnet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Telnet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UDPPerformanceTest.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Tick.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Tick.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Tick.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Tick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UART2TCPBridge.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/UART.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/UART.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UART.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/UDP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UDP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/UDP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UDP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/UDP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/UDP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/MPFSImg.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/MPFSImg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/MPFSImg.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/MPFSImg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/MPFSImg.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/MPFSImg.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/MPFSImg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/MPFSImg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/MPFSImg2.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/MPFSImg2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/MPFSImg2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/MPFSImg2.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/MPFSImg2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/MPFSImg2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/MPFSImg2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/BerkeleyAPI.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/ARCFOUR.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ARCFOUR.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/ARCFOUR.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ARCFOUR.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/ARCFOUR.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/ARCFOUR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/BigInt.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/BigInt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/BigInt.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/BigInt.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/BigInt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/BigInt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Random.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Random.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Random.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/RSA.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/RSA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/RSA.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/RSA.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/RSA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/RSA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/SSL.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SSL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/SSL.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SSL.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/SSL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/SSL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/CustomHTTPApp.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/LegacyHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/LegacyHTTPApp.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/Main.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/Main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/Main.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/Main.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/Main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/Main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/oled.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/oled.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/oled.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/oled.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/oled.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/oled.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/oled.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/oled.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/SocketsClient.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/SocketsClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/SocketsClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/SocketsClient.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/SocketsClient.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/SocketsClient.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/SocketsClient.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/SocketsClient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1265958231/TFTPc.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/TFTPc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/TFTPc.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/TFTPc.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/TFTPc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/TFTPc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Announce.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Announce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Announce.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Announce.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/ARP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ARP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/ARP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ARP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/ARP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/ARP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Delay.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Delay.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Delay.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/DHCP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DHCP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/DHCP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DHCP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/DHCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/DHCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/DHCPs.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DHCPs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/DHCPs.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DHCPs.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/DHCPs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/DHCPs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/DNS.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DNS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/DNS.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/DNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/DNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/DynDNS.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/DynDNS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/DynDNS.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/DynDNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/DynDNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/DynDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/ETH97J60.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ETH97J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ETH97J60.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/ETH97J60.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ETH97J60.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/ETH97J60.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/ETH97J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/FTP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/FTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/FTP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/FTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/FTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/FTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Hashes.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Hashes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Hashes.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Hashes.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Helpers.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Helpers.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Helpers.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/HTTP2.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/HTTP2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/HTTP2.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/HTTP2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/HTTP2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/HTTP2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/HTTP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/HTTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/HTTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/HTTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/HTTP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/HTTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/HTTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/HTTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/ICMP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ICMP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/ICMP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ICMP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/ICMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/ICMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/IP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/IP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/IP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/IP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/IP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/IP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/LCDBlocking.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/LCDBlocking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/LCDBlocking.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/LCDBlocking.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/MPFS2.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/MPFS2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/MPFS2.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/MPFS2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/MPFS2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/MPFS2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/MPFS.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/MPFS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/MPFS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/MPFS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/MPFS.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/MPFS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/MPFS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/MPFS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/NBNS.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/NBNS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/NBNS.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/NBNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/NBNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/NBNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Reboot.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Reboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Reboot.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Reboot.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Reboot.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Reboot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/SMTP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SMTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/SMTP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SMTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/SMTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/SMTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/SNMP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SNMP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/SNMP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SNMP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/SNMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/SNMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/SNTP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SNTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/SNTP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SNTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/SNTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/SNTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SPIEEPROM.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/SPIEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/StackTsk.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/StackTsk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/StackTsk.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/StackTsk.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/StackTsk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/StackTsk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/TCP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/TCP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/TCP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/TCP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/TCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/TCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/TCPPerformanceTest.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/TCPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Telnet.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Telnet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Telnet.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Telnet.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Telnet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Telnet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UDPPerformanceTest.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/UDPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Tick.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Tick.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Tick.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Tick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UART2TCPBridge.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/UART2TCPBridge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/UART.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/UART.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UART.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/UDP.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/UDP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/UDP.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/UDP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/UDP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/UDP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/MPFSImg.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/MPFSImg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/MPFSImg.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/MPFSImg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/MPFSImg.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/MPFSImg.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/MPFSImg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/MPFSImg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/MPFSImg2.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/MPFSImg2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/MPFSImg2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/MPFSImg2.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/MPFSImg2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/MPFSImg2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/MPFSImg2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/BerkeleyAPI.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/BerkeleyAPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/ARCFOUR.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/ARCFOUR.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/ARCFOUR.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/ARCFOUR.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/ARCFOUR.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/ARCFOUR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/BigInt.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/BigInt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/BigInt.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/BigInt.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/BigInt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/BigInt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/Random.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/Random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/Random.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/Random.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/Random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/Random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/RSA.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/RSA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/RSA.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/RSA.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/RSA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/RSA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1265958231/SSL.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1265958231" 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1265958231/SSL.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1265958231/SSL.o   "../../../../Downloads/Olimex PIC micro TCP/Microchip/TCPIP Stack/SSL.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1265958231/SSL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1265958231/SSL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/CustomHTTPApp.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/CustomHTTPApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/LegacyHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/LegacyHTTPApp.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/LegacyHTTPApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/Main.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/Main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/Main.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/Main.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/Main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/Main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/oled.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/oled.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/oled.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/oled.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/oled.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/oled.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/oled.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/oled.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/427802236/SocketsClient.o: ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/SocketsClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427802236" 
	@${RM} ${OBJECTDIR}/_ext/427802236/SocketsClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/427802236/SocketsClient.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -I".." -I"../../Include" -I"../../Microchip/Include" -I"../../../TCPIP Demo App" -I"../../Microchip/Include/TCPIP Stack" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/427802236/SocketsClient.o   "../../../../Downloads/Olimex PIC micro TCP/TCPIP Demo App/SocketsClient.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/427802236/SocketsClient.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427802236/SocketsClient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/TCPIP_Demo_App-C18.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../Microchip/TCPIP\ Stack/BigInt_helper.lib  ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/18f66j60_g.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "..\..\..\..\Downloads\Olimex PIC micro TCP\TCPIP Demo App\18f66j60_g.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"$(BINDIR_)$(TARGETBASE).map" -w -l".." -l"."  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/TCPIP_Demo_App-C18.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}  "..\..\Microchip\TCPIP Stack\BigInt_helper.lib" 
else
dist/${CND_CONF}/${IMAGE_TYPE}/TCPIP_Demo_App-C18.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../Microchip/TCPIP\ Stack/BigInt_helper.lib ../../../../Downloads/Olimex\ PIC\ micro\ TCP/TCPIP\ Demo\ App/18f66j60_g.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "..\..\..\..\Downloads\Olimex PIC micro TCP\TCPIP Demo App\18f66j60_g.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"$(BINDIR_)$(TARGETBASE).map" -w -l".." -l"."  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/TCPIP_Demo_App-C18.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}  "..\..\Microchip\TCPIP Stack\BigInt_helper.lib" 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
