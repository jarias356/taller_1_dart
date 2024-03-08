/** Escribir un programa que defina una clase Persona con los atributos nombre, edad y
género, y un método presentarse que imprima en la consola (haciendo uso de 1 solo
print) una breve descripción de la persona. **/

void main() {
  Person person = new Person(name: "Jhoto", genre: "Masculino", age: 22);

  person.appear();

}

class Person {
  late String name;
  late String genre;
  late int age;

  Person({required String name, required String genre, required int age}) {
    this.name = name;
    this.genre = genre;
    this.age = age;

  }

  void appear() {
    print("\nHolo yo soy $name, tengo $age de edad, y mi genero es $genre.");

  }


}