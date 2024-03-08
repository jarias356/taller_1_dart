/** Escribir un programa que defina una función que reciba una lista de cadenas de texto
y devuelva una lista con las cadenas ordenadas alfanuméricas usando Dart. Por
ejemplo, si la lista de entrada es ['manzana', '021laptop', ’zapato’, '&2top'], la lista de
salida debe ser [‘&2top’, ‘021laptop’, ‘manzana’, ‘zapato’]. Tener en cuenta el código
ASCII para la comparación de los elementos. **/

void main() {
  sortList(["&2top", "021laptop", "manzana", "zapato"]);

}

void sortList(List<String> list) {
  print(list..sort());

}