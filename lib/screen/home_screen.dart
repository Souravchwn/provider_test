import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/model/cart_model.dart';
import 'package:provider_test/provider/product_provider.dart';
import 'package:provider_test/screen/product_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final prodProvider = Provider.of<ProductProvider>(context, listen: false);
    final prodList = prodProvider.productList;
  

    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Container(
        child: Column(
          children: [
            // Expanded(
            //     child: ListView.builder(
            //   itemCount: prodList.length,
            //   itemBuilder: (context, index) => ListTile(
            //     title: Text(prodList[index].title!),
            //   ),
            // )),
            Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 15,
                            childAspectRatio: (1 / 1.23)),
                    itemCount: prodList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetails(
                                //id: Provider.of<ProductProvider>(context, listen: false).productList[index].id,
                                  id: prodList[index].id!,
                                  description: prodList[index].description!,
                                  imgUrl: prodList[index].imgUrl!,
                                  title: prodList[index].title!,
                                  price: prodList[index].price!),
                            )),
                        child: Card(
                          child: Column(
                            children: [
                              Center(child: Text(prodList[index].title!)),
                              Image.network(prodList[index].imgUrl!)
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {

  //   return Consumer<ProductProvider>(builder: (context, prodProvider, child) {
  //     return Scaffold(
  //       appBar: AppBar(title: Text("Home")),
  //       body: Container(
  //         child: Column(
  //           children: [
  //             Expanded(
  //                 child: ListView.builder(
  //               itemCount: prodProvider.productList.length,
  //               itemBuilder: (context, index) => ListTile(title: Text(prodProvider.productList[index].title!)),
  //             ))
  //           ],
  //         ),
  //       ),
  //     );
  //   });
  // }
}
