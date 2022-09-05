// Definiçao de valores para variáveis
#define low LOW
#define high HIGH
int blue = 10;
int green = 11;
int yellow = 12;
int red = 13;
int i = 0;


void setup() {
  pinMode(blue, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(yellow, OUTPUT);
  pinMode(red, OUTPUT);

}
void lowAll(){
	digitalWrite(blue, low);
	digitalWrite(yellow, low);
	digitalWrite(red, low);
	digitalWrite(green, low);
}
void highAll(){
  	digitalWrite(blue, high);
	digitalWrite(yellow, high);
	digitalWrite(red, high);
	digitalWrite(green, high);
}
// the loop routine runs over and over again forever:
void loop() {
  	digitalWrite(blue, HIGH);
    delay(1000);
    digitalWrite(blue, low);
      if(i < 3){
          digitalWrite(red, HIGH);
      }else if(i < 7){
          digitalWrite(green, HIGH);
      }else{
          digitalWrite(yellow, HIGH);
      }
    delay(1000);
    lowAll();
    ++i; i = i % 8;
}

