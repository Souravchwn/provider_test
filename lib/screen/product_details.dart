import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/provider/cart_provider.dart';
import 'package:provider_test/provider/product_provider.dart';

class ProductDetails extends StatelessWidget {
  final String? title;
  final String? id;
  final String? description;
  final String? price;
  final String? imgUrl;
  const ProductDetails(
      {super.key,
      this.title,
      this.id,
      this.description,
      this.price,
      this.imgUrl});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    //final cartList = cartProvider.cartList;
    return Scaffold(
      appBar: AppBar(title: Text(title!)),
      body: Column(
        children: [
          Image.network(imgUrl!),
          Text(description!),
          Text("Price $price"),
          ElevatedButton.icon(
              onPressed: () {
                cartProvider.addToCart(id: id, name: title, price: price);
                print(" cart ${cartProvider.cartList.length}");
              },
              icon: Icon(Icons.plus_one),
              label: Text("Add to cart"))
        ],
      ),
    );
  }
}
