import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'meet_shop/providers/cart_provider.dart';
import 'meet_shop/screens/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartProvider>(create: (_)=>CartProvider())
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          home: IntroScreen()

      ),
    );
  }
}