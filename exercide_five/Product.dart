import 'pair.dart';

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