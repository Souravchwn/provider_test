import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/provider/cart_provider.dart';
import 'package:provider_test/provider/product_provider.dart';
import 'package:provider_test/screen/home_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ProductProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
