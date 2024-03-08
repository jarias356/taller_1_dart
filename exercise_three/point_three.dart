/** Escribir un programa que defina una función que reciba una cadena de texto y
devuelva verdadero si es un palíndromo o falso si no lo es. Un palíndromo es una
palabra o frase que se lee igual al derecho y al revés. Por ejemplo, “ana” o “anita lava
la tina” son palíndromos. **/

void main() {
  print("Es polindramo -> Ana: ${validpalindrome("Ana")}");

  print("Es polindramo -> Anita lava la tina: ${validpalindrome("Anita lava la tina")}");

  print("Es polindramo -> Hola mundo: ${validpalindrome("Hola mundo")}");
    
}

bool validpalindrome(String wordOrPhrase) {
  String cleanWord = wordOrPhrase.toLowerCase().replaceAll(RegExp(r'\s+'), '');
  String reversedWord = cleanWord.split("").reversed.join("").toString();
  
  return cleanWord == reversedWord;

}