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

class Pair {
  late bool first;
  late String second;

  Pair({required bool first, required String second}) {
    this.first = first;
    this.second = second;

  }

}

class Product {
  String _productName = "";
  double _productPrice = 0.0;
  int _productQuantity = 0;

  Product({required String name, required double price, required int quantity}) {
    _productName = name;
    if (price > 0) {
      _productPrice = price;

    } 
    if (quantity > 0) {
      _productQuantity = quantity; 

    }
    

  }

  int getProductQuantity() => _productQuantity;
  double getProductPrice() => _productPrice;
  String getProductName() => _productName;

  Pair _productQuantityValidBySale(int quantityBySale) {
    if (_productQuantity <= 0) return Pair(first: false, second: "Stock en 0 o negativo");

    if (quantityBySale <= 0) return Pair(first: false, second: "No pueded vengar cantidades negativas");
    if (_productQuantity < quantityBySale) return Pair(first: false, second: "La cantidad a vender es mayor al stock disponible");

    return Pair(first: true, second: "Puede continuar con la venta");
    

  }

  void doSale(int quantityBySale) {
    var response = _productQuantityValidBySale(quantityBySale);
    if (!response.first) {
      print(response.second);
      return;
    }
    _productQuantity = _productQuantity - quantityBySale;

    print("Se vendieron $quantityBySale del producto $_productName, quedando un total de $_productQuantity de stock disponoble.");

  }

   void doShop(int quantityByShop) {
    _productQuantity = _productQuantity + quantityByShop;

    print("Se vendieron $quantityByShop del producto $_productName, quedando un total de $_productQuantity de stock disponoble.");

  }

}