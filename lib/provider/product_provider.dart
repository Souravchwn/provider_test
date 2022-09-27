import 'package:flutter/cupertino.dart';
import 'package:provider_test/model/product_model.dart';

class ProductProvider with ChangeNotifier {
  final List<ProductModel> _productList = [
    ProductModel(
      id: "1",
      title: "Apple iPhone 14 Pro Max",
      price: "800",
      description: "This is discription",
      imgUrl:
          "https://www.mobiledokan.co/wp-content/uploads/2021/09/Apple-iPhone-14-Pro-Max-Deep-Purple.jpg",
    ),
    ProductModel(
      id: "2",
      title: "Xiaomi Poco X4 GT",
      price: "800",
      description: "This is discription",
      imgUrl:
          "https://www.mobiledokan.co/wp-content/uploads/2022/05/Xiaomi-Poco-X4-GT.jpg",
    ),
    ProductModel(
      id: "3",
      title: "Realme GT Neo 3 150W",
      price: "800",
      description: "This is discription",
      imgUrl:
          "https://www.mobiledokan.co/wp-content/uploads/2021/10/Realme-GT-Neo3-Le-Mans.jpg",
    ),
    ProductModel(
      id: "4",
      title: "Realme GT Neo3 Naruto Edition",
      price: "800",
      description: "This is discription",
      imgUrl:
          "https://www.mobiledokan.co/wp-content/uploads/2022/05/Realme-GT-Neo3-Naruto-Edition.jpg",
    ),
  ];
   List<ProductModel> get productList => _productList;
  }
