int entrada1 = 0;   
int entrada2 = 0;   
int led1 = 13;
int saida;

void setup() {
	Serial.begin(9600);     
	pinMode(led1,OUTPUT);
}
void loop() {
	if (Serial.available() > 0) {
		entrada1 = Serial.parseInt();
        entrada2 = Serial.parseInt();
        Serial.print("entrada1= ");
        Serial.print(entrada1);
        Serial.println();
        Serial.print("entrada2= ");
        Serial.print(entrada2);
        Serial.println();
        saida = portaxor(entrada1,entrada2);
 	    Serial.print("xor= ");
        Serial.print(saida);
        Serial.println();
        mostra(saida);
        saida = portaor(entrada1,entrada2);
        Serial.print("or= ");
        Serial.print(saida);
        Serial.println();
        saida = portaand(entrada1,entrada2);
       	Serial.print("and= ");
        Serial.print(saida);
        Serial.println();
        saida = portanot(entrada1);
        Serial.print("not entrada1= ");
        Serial.print(saida);
        Serial.println();
      }
}
