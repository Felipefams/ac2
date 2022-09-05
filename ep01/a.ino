#define low LOW
#define high HIGH
#define dw digitalWrite
#define sp Serial.print
#define spln Serial.println
#define spi Serial.parseInt
#define readStr Serial.readString
#define string String
string e;
int red = 13;
int yellow = 12;
int green = 11;
int blue = 10;
int saida;
void setup() {
        Serial.begin(9600);
        pinMode(red,OUTPUT);
        pinMode(yellow,OUTPUT);
        pinMode(green,OUTPUT);
        pinMode(blue,OUTPUT);
}
int ans(int &x, int *arr){
	const int a = arr[0];
	const int b = arr[1];

	if(x == 0) return a & b;
	else if(x == 1) return a | b;
    else if(x == 2){
      if(a == 0) dw(green,high);
      return ~a;
    }
	else return a + b;
}
void loop(){
		if (Serial.available() > 0) {
          	lowAll();
			e = readStr();
			int arr[3];
			for(int i = 0; i < 3; ++i) arr[i] = e[i] - '0';
			if(arr[0] == 1) dw(red, high);
			if(arr[1] == 1) dw(yellow, high);
          	const int k = ans(arr[2],arr);
			if(k == 2){
				dw(green, high);
				dw(blue, high);
			}else if(k == 1) dw(green, high);
			spln(k);
		}
}
void lowAll(){
	digitalWrite(blue, low);
	digitalWrite(yellow, low);
	digitalWrite(red, low);
	digitalWrite(green, low);
}

