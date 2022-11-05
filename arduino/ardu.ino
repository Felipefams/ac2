#define red  13
#define yellow  12
#define green  11
#define blue  10
#define low LOW
#define high HIGH
#define dw digitalWrite
#define print Serial.print
#define println Serial.println
#define spi Serial.parseInt
#define readStr Serial.readString
#define string String

int led1 = 13;
int saida;
int z = 100;
string str[100];
int k = 4;
const byte numPins = 4;
byte pins[] = {blue, green, yellow, red};

int pos = 4;
void setup() {
         Serial.begin(9600);
         pinMode(red,OUTPUT);
         pinMode(yellow,OUTPUT);
         pinMode(green,OUTPUT);
         pinMode(blue,OUTPUT);
}

void showLed(int n){
  byte num = byte(n);
  for(int i = 0; i < 4; ++i){
    byte state = bitRead(num, i);
    digitalWrite(pins[i], state);
  }
}

void solve(){
  int w,x,y;
  for(int i = 4; i < k-1; ++i){
    str[0] = string(i);
    str[2] = string(str[i][0]);
    str[3] = string(str[i][1]);
	w = ulaHandleOperation(chrToInt(str[i][0]), chrToInt(str[i][1]), chrToInt(str[i][2]));
    str[1] = string(w);
    println("[" + str[0] + "]" + "[" + str[1] + "]" + "[" + str[2] + "]" + "[" + str[3] + "]" + "[" + str[i] + "]" );
    showLed(w);
    delay(2000);
  }
}

void loop() {
      	if(Serial.available() > 0) {
         //z = Serial.parseInt();
         str[0] = string(k); k++;
         //println(str[0]);
         String entrada;
         entrada = Serial.readString();
         str[k] = entrada;
         bool b = false;
         if(entrada == "XXX") b = true;
          if(b){
            solve();
          }
     	 str[pos] = entrada;
         pos++;
         //free(str);
     }
}

int chrToInt(char &c){
  if(c >= '0' && c <= '9')
    return c - '0';
  else if(c == 'A')
    return 10;
  else if(c == 'B')
    return 11;
  else if(c == 'C')
    return 12;
  else if(c == 'D')
    return 13;
  else if (c == 'E')
    return 14;
  else if (c == 'F')
    return 15;
}

int ulaHandleOperation(int a,int b ,int s){
    switch (s) {
case 0:
        //not A
          return (~a)+16;
       break;

      case 1:
        //(A+B)’
          return(~(a|b) + 16);
       break;

      case 2:
        // A’B
           return((~a+16)&b);
       break;

      case 3:
        // 0 Lógico
          return(0);
       break;

      case 4:
        //(AB)’
        return(~(a&b)+16);
      break;

      case 5:
        // B’
        return(~b);
      break;

      case 6:
        //A⊕B
        return(a^b);
      break;

      case 7:
        //AB’
          return(a&(~b +16));
      break;

      case 8:
        //A’+ B
          return((~a +16)|b);
      break;

      case 9:
        //(A⊕B)’
        return(~(a^b) +16);
      break;

      case 10:
        // B
          return(b);
      break;

      case 11:
        // AB
        return(a&b);
      break;

      case 12:
        // 1 lógico
          return(15);
      break;

      case 13:
        //A+B’
          return(a|(~b +16));
      break;

      case 14:
        // A+B
         return(a|b);
      break;

      case 15:
        // A
          return(a);
      break;

      default:
       println("Ocorreu um erro durante a operação");
  		break;    
    }
}
