#include "I2C_BB.h"
#include <p18f66j60.h>

void I2C_ST(void) {
    SDA_HIGH();
    SCL_HIGH();
    SDA_LOW();
    SCL_LOW();
}

void I2C_SP(void) {
    SDA_LOW();
    SCL_HIGH();
    SDA_HIGH();
}

char I2C_OUT(unsigned char data) {
    char bit_temp;

    SCL_LOW();

    for (bit_temp = 0; bit_temp < 8; bit_temp++) {

        if (data & 0x80)
            SDA_HIGH();
        else
            SDA_LOW();

        SCL_HIGH();
        data <<= 1;
        SCL_LOW();
    }

    SCL_HIGH();
    SDA_HIGH();

    bit_temp = SDA_IN; // possible ACK bit

    SCL_LOW();
    SDA_LOW();

    return bit_temp;
}

unsigned char I2C_IN(char NACK) {
    char bit_temp;
    unsigned char data;

    SDA_HIGH();

    for (bit_temp = 0; bit_temp < 8; bit_temp++) {
        data <<= 1;

        SCL_HIGH();

        if (SDA_IN)
            data |= 1;

        SCL_LOW();
    }

    if (NACK == 1)
        SDA_LOW();
    else
        SDA_HIGH();

    SCL_HIGH();

    SCL_LOW();
    SDA_LOW();

    return data;
}

void delay(unsigned int time) {
    unsigned int t;
    for (t = 0; t < time; t++) {
              _asm  nop _endasm
    }
}

void delay2(unsigned int time) {
    unsigned int t;
    for (t = 0; t < time; t++) {
        Delay10KTCYx(1);
    }
}
