/** Escribir un programa que defina una función que utilice una lista de números enteros
y devuelva una colección con los números pares e impares separados, tanto los pares
cómo los impares deben estar ordenados de menor a mayor. Por ejemplo, si la lista de
entrada es [1, 50, 3, 4, 5, 90, 17], la lista de salida debe ser [[4, 50, 90], [1, 3, 5, 17]]. **/

void main() {
  List<int> numberList = [1, 50, 3, 4, 5, 90, 17];

  separeteOddsAndEvensNumber(numberList..sort());

}

void separeteOddsAndEvensNumber(List<int> numberList) {
  List<int> evenNumberList = numberList.where((element) => element % 2 == 0).toList();
  List<int> oddNumberList = numberList.where((element) => element % 2 != 0).toList();

  print("\n${[evenNumberList, oddNumberList]}");

}