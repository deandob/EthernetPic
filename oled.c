#include "oled.h"
#include <string.h>
#include <delays.h>
#include <i2c.h>

#define OLEDAddress 0x3C            // either 3C or 3D

// OLED display based on SSD1306 driver
        // RC3 is SCL1 pin 34
        //RC4 is SDA1 pin 35

//http://www.hobbytronics.co.uk/c18-large-data-arrays

void I2CInit(void);
void I2CInit(){

    TRISC = 0x00;

    SSPSTAT &= 0x3F;                // power on state
    SSPCON1 = 0x00;                 // power on state
    SSPCON2 = 0x00;                 // power on state
    SSPCON1 |= MASTER;           // select serial mode
    SSPSTAT |= SLEW_OFF;                // slew rate on/off

    I2C1_SCL = 1;
    I2C1_SDA = 1;

    SSPCON1 |= SSPENB;              // enable synchronous serial port

    SSPADD =  0x19;       // 400Khz for 41.667Mhz clock
}

void I2CStart(void);
void I2CStart(){
	SSP1CON2bits.SEN = 1;
        while(SSP1CON2bits.SEN);
}
void I2CStop(void);
void I2CStop(){
	SSP1CON2bits.PEN = 1;
        while(SSP1CON2bits.PEN);
}
void I2CSend(char);
void I2CSend(char dat) {
	SSPBUF = dat; 
    while(SSP1STATbits.BF);
	while ((SSPCON2 & 0b00011111 ) || ( SSPSTAT & 0b00000100 ) );
}

void OLED_init() {
    char address = OLEDAddress;
    OLED_address = address << 1;            // 7 bit address, 8th bit is r/w
    I2CInit();
    OLED_command(OLED_DISPLAYON);          //--turn on oled panel
    Delay100TCYx(100);
    OLED_command(OLED_DISPLAYOFF);          // 0xAE
    OLED_command(OLED_SETDISPLAYCLOCKDIV);  // 0xD5
    OLED_command(0x80);                        // the suggested ratio 0x80
    OLED_command(OLED_SETMULTIPLEX);        // 0xA8
    OLED_command(0x3F);
    OLED_command(OLED_SETDISPLAYOFFSET);    // 0xD3
    OLED_command(0x00);                         // no offset
    OLED_command(OLED_SETSTARTLINE | 0x0);  // line #0
    OLED_command(OLED_CHARGEPUMP);          // 0x8D
      OLED_command(0x14);
    OLED_command(OLED_MEMORYMODE);          // 0x20
    OLED_command(0x01);                        // 0x2 page mode. 0x1 vertical, 0x0 horizontal
    OLED_command(OLED_SEGREMAP | 0x01);
    OLED_command(OLED_COMSCANDEC);
    OLED_command(OLED_SETCOMPINS);          // 0xDA
    OLED_command(0x12);
    OLED_command(OLED_SETCONTRAST);         // 0x81
      OLED_command(0xCF);
    OLED_command(OLED_SETPRECHARGE);        // 0xd9
      OLED_command(0xF1);
    OLED_command(OLED_SETVCOMDETECT);       // 0xDB
    OLED_command(0x40);
    OLED_command(OLED_SETSTARTLINE | 0x0); // line #0
    OLED_command(OLED_DISPLAYALLON_RESUME); // 0xA4
    OLED_command(OLED_NORMALDISPLAY);       // 0xA6
    
    OLED_clear();
    OLED_command(OLED_DISPLAYON);          //--turn on oled panel

}
void OLED_command(char command) {

    I2CStart();             //StartI2C();
    I2CSend(OLED_address);  //send address
    I2CSend(0x00);          //send data incomming
    I2CSend(command);       //send command
    I2CStop();              //StopI2C();
}
void OLED_data( char data) {

    I2CStart();             //StartI2C();
    I2CSend(OLED_address);      //send address
    I2CSend(0x40);          //send data incomming
    I2CSend(data);          //send data
    I2CStop();              //StopI2C();
}

void OLED_writeBar(unsigned char num);
void OLED_writeBar(unsigned char num) {

    unsigned char i, j, bar[8] = {0b00000111, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0b00001110};

    unsigned int numsegs, left;
    
    OLED_command(OLED_PAGEADDR);
    OLED_command(0x00);
    OLED_command(0x07);

    I2CStart();
    I2CSend(OLED_address);
    I2CSend(0x40);
    for (i = 1; i <= GAUGE_SPAN; i++) {
        I2CSend(Gauge[i]);
    }
    I2CStop();

    // work out the bar graph. 8 x 8 bit pages per column, page 0 = top, LSB = top
    numsegs = (num / 16);                   // divide by 2 (64 pixels - 4 top, - 4 bot, - 4 bot offset = 52 pixels, 52/99 = 135 / 256)
    left = (num - (numsegs * 16)) / 2;
    for (i = 6; i > (6 - numsegs); i--) {
        bar[i] = 0xff;                      // fill bars
    }
    bar[i] = (0xff << (7 - left));          // remaining bar
    if (num == 99) bar[0] = 0b11110111;
    bar[0] = bar[0] | 0b00000111;        // top bar

    OLED_command(OLED_PAGEADDR);
    OLED_command(0x00);
    OLED_command(0x07);
    OLED_command(OLED_COLUMNADDR);
    OLED_command(112);  // low col = 0
    OLED_command(127);  // hi col = 0

    I2CStart();
    I2CSend(OLED_address);
    I2CSend(0x40);
    for (j = 0; j < 9; j++) {
        for (i = 0; i < 8; i++) {
            I2CSend(bar[i]);
        }
    }
    I2CStop();
}

void OLED_writeDigit(unsigned char num);
void OLED_writeDigit(unsigned char num) {
    unsigned int i;

    OLED_command(OLED_PAGEADDR);
    OLED_command(0x00);
    OLED_command(0x07);

    I2CStart();
    I2CSend(OLED_address);
    I2CSend(0x40);
    for (i = 1; i <= FONT_SPAN; i++) {
        I2CSend(Pocket_Calculator[i + num * FONT_SPAN]);
    }
    I2CStop();
}

void OLED_writenum(unsigned char num){

    unsigned int digit, i;
    
    OLED_command(OLED_COLUMNADDR);      // for vertical / horiz mode only
    OLED_command(0);  // low col = 0
    OLED_command(127);  // hi col = 0

    if (num > 99) num = 99;
    if (num > 9) {
       digit = num / 10;
       OLED_writeDigit(digit);
       OLED_writeDigit(num - (digit * 10));
    } else {
        I2CStart();
        I2CSend(OLED_address);
        I2CSend(0x40);
        for (i = 1; i <= FONT_SPAN; i++) I2CSend(0x00);
        I2CStop();
        OLED_writeDigit(num);
    }

    OLED_command(OLED_PAGEADDR);
    OLED_command(0x00);
    OLED_command(0x07);

    I2CStart();
    I2CSend(OLED_address);
    I2CSend(0x40);
    for (i = 1; i <= PERC_SPAN; i++) I2CSend(Perc[i]);
    I2CStop();

    OLED_writeBar(num);
    //INTCONbits.GIE = 1;                 // turn on interrupts
}
void OLED_clear(){
    unsigned j;

    OLED_command(OLED_COLUMNADDR);      // for vertical / horiz mode only
    OLED_command(0);  // low col = 0
    OLED_command(127);  // hi col = 0

    I2CStart();
    I2CSend(OLED_address);
    I2CSend(0x40);
  
    for (j = 0; j < 1024; j++){
        I2CSend(0x00);
    }
    I2CStop();
}
/*
void OLED_invert(){
    OLED_command(OLED_INVERTDISPLAY);
}
void OLED_rscroll(char start, char stop) {
    OLED_command(0x26);
    OLED_command(0X00);
    OLED_command(start);
    OLED_command(0X00);
    OLED_command(stop);
    OLED_command(0X00);
    OLED_command(0XFF);
    OLED_command(0x2F); //Activate scroll
}
void OLED_lscroll(char start, char stop) {
    OLED_command(0x27);
    OLED_command(0X00);
    OLED_command(start);
    OLED_command(0X00);
    OLED_command(stop);
    OLED_command(0X00);
    OLED_command(0XFF);
    OLED_command(0x2F); //Activate scroll
}
void OLED_stopscroll() {
    OLED_command(0x2E);
}
void OLED_pixel(short x, short y, char color){ //hmm, dosent include error checking..
    char y_bit = y%8;
    short y_row = (y - y_bit)*16 + x;
    OLED_buffer[y_row] |= (color?1:0) << y_bit;
}
void OLED_char(char character, short x, short y) {
    short table_offset = (character-0x20)*5;
    short offset = y*16 + x;
    char i = 0;
    for(; i < 5; i++) OLED_buffer[i+offset] = OLED_characters[i+table_offset];
}

//extern void print(const rom char *);
void OLED_string(const rom char* str, short x, short y) {

    short pos = 0;
    char character = str[pos++];
    short startx = x;
    short starty = y;
    while(character != '\0') {
        OLED_char(character, startx, starty);
        if(startx >= 123) starty++; //wrap around
        startx += 5;
        character = str[pos++];
    }
}*/