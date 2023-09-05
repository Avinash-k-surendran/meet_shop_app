import 'package:flutter/material.dart';
import 'package:meet_shop/Meet%20shop/provider/cart.dart';
import 'package:meet_shop/Meet%20shop/screen/intro.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartProvider>(create: (_)=>CartProvider(),

      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: IntroScreen()

      ),
    );
  }
}