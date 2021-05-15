#include <OneWire.h> 
#include <DallasTemperature.h>
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x27,20,4);
const int pinEncA = 1;
const int pinEncB = 0;
const int pinSDA = 2;
const int pinSCL = 3;
const int pinUp = 4;
const int pinDown = 5;
const int pinMot1 = 6;
const int pinMot2 = 7;
const int pinData = 8;
const int pinHeat = 9;
const int pinBut = 10;
const int pinBuzz = 16;

OneWire oneWire(pinData); 
DallasTemperature sensors(&oneWire);

int step = 0;
int tempSet = 100;
float tempNow;
int timeMin = 5;
int timeSec = 10;
int timeLeftMin;
int timeLeftSec;
unsigned long timeStart;
unsigned long timeTotal;
unsigned long timeLeft;
unsigned long timeRelay = 0;
unsigned long timeNow;
unsigned long timeDebouce = 0;
unsigned long timeEncoder = 0;
volatile bool encoderUp = false;
volatile bool encoderDown = false;
bool buttonPressed;

void setup() {
  lcd.init();
  lcd.backlight();
  lcd.setCursor(0,0);
  lcd.print("Welcome to BoilerBot");
  delay(2000);
  sensors.begin(); 
  // put your setup code here, to run once:
  pinMode(pinBuzz, OUTPUT);
  pinMode(pinHeat, OUTPUT);
  pinMode(pinMot1, OUTPUT);
  pinMode(pinMot2, OUTPUT);
  pinMode(pinUp, INPUT_PULLUP);
  pinMode(pinDown, INPUT_PULLUP);
  pinMode(pinBut, INPUT_PULLUP);
  pinMode(pinEncA, INPUT_PULLUP);
  pinMode(pinEncB, INPUT_PULLUP);
  //attach interrupt to button and encA
  attachInterrupt(digitalPinToInterrupt(pinEncA), encoder, FALLING);
}

void loop() {
  //run this every loop
  timeNow = millis();
  if(digitalRead(pinBut) ) {
    buttonPressed = false;
  }
  if(!digitalRead(pinBut) && timeNow-timeDebouce > 500) {
    buttonPressed = true;
    timeDebouce = timeNow;
  }

  //execution steps
  switch (step) {
    case 0: //raise to upper limit
      lcd.clear();
      timeStart = millis();
      while(digitalRead(pinUp)) {
        digitalWrite(pinMot1, HIGH);
        digitalWrite(pinMot2, LOW);
        timeNow = millis();
        if(timeNow - timeStart > 20000) {
          digitalWrite(pinMot1, LOW);
          //timeout error
          lcd.setCursor(0,0);
          lcd.print("Error: Upper limit ");
          lcd.setCursor(0,1);
          lcd.print("timeout");
          while(1);
        }
      }
      digitalWrite(pinMot1, LOW);
      step = 5;
      break;
      
    case 5: //temperature prompt
      lcd.clear();
      lcd.setCursor(0,0);
      lcd.print("Set Temp (C): ");
      lcd.print(tempSet);
      step = 10;
      break;

    case 10: //temperature controls
      if(encoderUp) {
        tempSet += 1;
        if (tempSet > 100) {
          tempSet = 100;
        }
        encoderUp = false;
      } else if (encoderDown) {
        tempSet -= 1;
        if (tempSet < 0) {
          tempSet = 0;
        }
        encoderDown = false;
      }
      if(buttonPressed) {
        buttonPressed = false;
        step = 20;
      }
      lcd.setCursor(14,0);
      lcd.print(tempSet);
      lcd.print(" ");
      break;

    case 20: //prompt time
      lcd.setCursor(0,1);
      lcd.print("Set Time: ");
      lcd.print(timeMin);
      lcd.print(":");
      if(timeSec == 0) {
        lcd.print("00");
      } else {
        lcd.print(timeSec);
      }
      step = 30;
      break;

    case 30: //time input
      if(encoderUp) {
        timeSec += 10;
        if (timeSec > 50) {
          timeMin += 1;
          timeSec = 0;
          if (timeMin > 99) {
            timeMin = 99;
          }
        }
        encoderUp = false;
      } else if (encoderDown) {
        timeSec -= 10;
        if (timeSec < 0) {
          timeMin -= 1;
          timeSec = 50;
          if (timeMin < 0) {
            timeMin = 0;
            timeSec = 10;
          }
        }
        encoderDown = false;
      }
      lcd.setCursor(10,1);
      lcd.print(timeMin);
      lcd.print(":");
      if(timeSec == 0) {
        lcd.print("00");
      } else {
        lcd.print(timeSec);
      }
      timeTotal = 1000UL*(timeMin*60 + timeSec);
      if(buttonPressed) {
        buttonPressed = false;
        step = 40;
      }
      break;

    case 40: //display heating status
      lcd.setCursor(0,2);
      lcd.print("Heating (C)... ");
      step = 50;
      break;

    case 50: //read temperature
      sensors.requestTemperatures();
      tempNow = sensors.getTempCByIndex(0);
      lcd.setCursor(15,2);
      delay(50);
      lcd.print(tempNow);
      //turn hot plate on if under temp
      if (tempNow <= tempSet-5) {
        digitalWrite(pinHeat, HIGH);
      } else {
        step = 60;
        delay(50);
      }
      break;

    case 60: //clear heating status, lower food
      lcd.setCursor(0,2);
      delay(50);
      lcd.print("                    ");
      timeStart = millis();
      digitalWrite(pinMot1, LOW);
      digitalWrite(pinMot2, HIGH);
      while(digitalRead(pinDown)) {
        timeNow = millis();
        if(timeNow - timeStart > 20000) {
          //timeout error
          lcd.clear();
          digitalWrite(pinMot2, LOW);
          digitalWrite(pinHeat, LOW);
          lcd.setCursor(0,0);
          lcd.print("Error: Lower limit ");
          lcd.setCursor(0,1);
          lcd.print("timeout");
          while(1);
        }
      }
      digitalWrite(pinMot2, LOW);
      timeStart = timeNow;
      step = 70;
      break;

    case 70: //maintain temperature
      sensors.requestTemperatures();
      tempNow = sensors.getTempCByIndex(0);
      lcd.setCursor(0,2);
      lcd.print(tempNow);
      lcd.print("C");
      lcd.print("  ");
      timeNow = millis();
      //compute time left
      timeLeft = timeTotal-(timeNow-timeStart);
      //convert to whole seconds
      timeLeftSec = timeLeft/1000;
      //compute whole minutes
      timeLeftMin = timeLeftSec/60;
      //subtract minutes from seconds
      timeLeftSec -= 60*timeLeftMin;
      lcd.print(timeLeftMin);
      lcd.print(":");
      if(timeLeftSec < 10) {
        lcd.print("0");
      }
      lcd.print(timeLeftSec);
      lcd.print(" ");

      //move to next step if time is up
      if(timeLeftMin == 0 && timeLeftSec == 0) {
        step = 80;
      } else {
        //relay is blocked from switching too quickly
        if(timeNow - timeRelay > 20000UL) {
          if(tempNow >= tempSet) {
            digitalWrite(pinHeat, LOW);
            timeRelay = timeNow;
          } else if (tempNow <= tempSet-5) {
            digitalWrite(pinHeat, HIGH);
            timeRelay = timeNow;
          }
        }
      }
      break;
      
      case 80: //turn off and beep
        digitalWrite(pinHeat, LOW);
        float beep = 1000000.0/2400.0/2.0; //us
        for(int i=0; i<3; i++) {
          timeStart = millis();
          timeNow = millis();
          while(timeNow-timeStart < 300) {
            digitalWrite(pinBuzz, HIGH);
            delayMicroseconds(beep);
            digitalWrite(pinBuzz, LOW);
            delayMicroseconds(beep);
            timeNow = millis();
          }
          delay(700);
        }
        step = 0;
        break;

      default:
        lcd.clear();
        lcd.setCursor(0,0);
        lcd.print("Invalid step: ");
        lcd.setCursor(0,1);
        lcd.print(step);
        while(true);
  }

}

void encoder() {
  if(timeNow-timeEncoder > 100) {
    if(digitalRead(pinEncB)) {
      encoderDown = true;
    } else {
      encoderUp = true;
    }
    timeEncoder = timeNow;
  }
}
