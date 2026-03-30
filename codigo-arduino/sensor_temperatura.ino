
// Aqui ó o bloco de declaração de variáveis
const int PINO_SENSOR_TEMPERATURA = A0;
float temperaturaCelsius;

// aqui é a inicialização do iot
void setup() {
  Serial.begin(9600);
  }

// aqui ocorre um loop pegando a temperatura, passando via serial
void loop() {
  int valorLeitura = analogRead (PINO_SENSOR_TEMPERATURA);
  temperaturaCelsius = (valorLeitura * 5.0 / 1023.0) / 0.01;

  Serial.print("Temperatura: ");
  Serial.print(temperaturaCelsius);
  Serial.print(" ºC");

  delay(2000);
}
