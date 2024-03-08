import 'Person.dart';

/** Escribir un programa que defina una clase Persona con los atributos nombre, edad y
género, y un método presentarse que imprima en la consola (haciendo uso de 1 solo
print) una breve descripción de la persona. **/

void main() {
  Person person = new Person(name: "Jhoto", genre: "Masculino", age: 22);

  person.appear();

}