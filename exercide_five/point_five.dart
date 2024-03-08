import 'Product.dart';

/** Define una clase en Dart llamada "Producto" con atributos como nombre, precio y
cantidad en inventario. Crea objetos de esta clase, realiza operaciones como la
compra, venta y mostrar los detalles actualizados de los productos. Es necesario
validar el inventario de los productos. Es necesario hacer uso de los getter y setter
para acceder a dicha información y modificarla. **/

void main() {
  firstProduct();

}

void firstProduct() {
  Product apple = Product(name: "Manzana", price: 1300.0, quantity: 50);

  apple.doSale(30);
  apple.doSale(60);
  apple.doSale(19);
  apple.doSale(1);
  apple.doShop(10);
  apple.doSale(11);
  apple.doSale(10);
  apple.doSale(1);

}