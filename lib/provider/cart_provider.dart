import 'package:flutter/cupertino.dart';
import 'package:provider_test/model/cart_model.dart';

class CartProvider with ChangeNotifier {
  final List<CartModel> _cartList = [];
  addToCart({String? id, String? name, String? price}) {
    _cartList.add(CartModel(id: id, price: price, title: name));
    notifyListeners();
  }

  List<CartModel> get cartList {
    return [..._cartList];
  }
}
