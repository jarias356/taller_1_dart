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