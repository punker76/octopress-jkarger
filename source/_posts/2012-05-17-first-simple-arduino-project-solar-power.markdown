---
layout: post
title: "first simple arduino project: solar power"
date: 2012-05-17 22:46
comments: true
categories: [arduino]
keywords: arduino,project,solar,power,lcd,lcd4884,dtostrf
description: my first arduino project
---

He, that’s cool: I finished my first great arduino project: Solar Power measurement

Ok, it’s a simple project but the learning effect is good.
Read the analog signal and display the voltage value on a lcd (LCD4884).

That’s it. (use it with your own risk!)

{% codeblock lang:cpp %}
/*
  Here is my simple
 up to 5V Solar Power measurement sketch...
 version 0.1
 
 use it with your own risk!
 
 Any suggestions are welcome.
 E-mail: punkerat76 [at] jkarger [dot] de
 */

#include "LCD4884.h"

void setup()
{
  Serial.begin(9600);

  // we measure up to 5V
  analogReference(DEFAULT);

  lcd.LCD_init();
  lcd.LCD_clear();

  lcd.backlight(OFF); //Turn off the backlight

  lcd.LCD_write_string(5, 0, "Solar Power", MENU_NORMAL);
}

/* loop */

void loop()
{
  solar_power();
  delay(900);
}

/* functions */

int analoginput = 5; // our analog pin
int analogamount = 0; // stores incoming value
int old_analogamount = -1;
float voltage = 0; // used to store voltage value
float old_voltage = -1;

void solar_power()
{
  char buffer[100];

  analogamount = analogRead(analoginput);

  if (old_analogamount != analogamount) {
    old_analogamount = analogamount;

    sprintf(buffer,"%5d on A%d", analogamount, analoginput);
    Serial.println(buffer);
    sprintf(buffer,"%5d", analogamount);
    lcd.LCD_write_string(10, 2, buffer, MENU_NORMAL);
    sprintf(buffer,"on A%d", analoginput);
    lcd.LCD_write_string(45, 2, buffer, MENU_NORMAL);

    voltage = analogamount * 5.0 / 1024.0; // in volts
    if (old_voltage != voltage) {
      old_voltage = voltage;

      dtostrf(voltage, 5, 3, buffer);
      Serial.print("voltage on analog input (V): ");
      Serial.println(buffer);
      lcd.LCD_write_string(10, 4, buffer, MENU_NORMAL);
      lcd.LCD_write_string(45, 4, "V", MENU_NORMAL);

      if (voltage > 0.2) {
        // we have enough power, hehe turn the lights on!!!
        lcd.backlight(ON);
      } 
      else {
        lcd.backlight(OFF);
      }
    }
  }
}
{% endcodeblock %}