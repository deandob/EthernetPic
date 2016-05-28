/* 
 * File:   I2C_BB.h
 * Author: Dean
 *
 * Created on 27 January 2015, 9:13 PM
 */

#ifndef _I2C_BB_H
#define _I2C_BB_H

void Init_I2C(void);
unsigned char I2C_IN(char NACK);
char I2C_OUT(unsigned char data);
void I2C_SP(void);
void I2C_ST(void);

void delay(unsigned int time);
void delay2(unsigned int time);

#define SCL_HIGH() (SCLX = 1)
#define SDA_HIGH() (SDAX = 1)
#define SDA_LOW() (SDAX = 0,SDA_IN=0)
#define SCL_LOW() (SCLX = 0,SCL_IN=0)
        // RC3 is SCL1 pin 34
        //RC4 is SDA1 pin 35
#define SCLX     TRISCbits.TRISC3
#define SDAX     TRISCbits.TRISC4
#define SCL_IN  PORTCbits.RC3
#define SDA_IN  PORTCbits.RC4

//INT CHANNELS
#define CH1 PORTAbits.RA0
#define CH2 PORTAbits.RA1
#define CH3 PORTBbits.RB0
#define CH4 PORTBbits.RB1
#define CH5 !PORTBbits.RB2
#define CH6 !PORTBbits.RB3
#define CH7 !PORTBbits.RB4
#define CH8 !PORTBbits.RB5

#endif
