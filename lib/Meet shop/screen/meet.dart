import 'package:flutter/material.dart';
import 'package:meet_shop/Meet%20shop/provider/cart.dart';
import 'package:meet_shop/Meet%20shop/widget/main_tile.dart';
import 'package:meet_shop/Meet%20shop/widget/product_item.dart';
import 'package:provider/provider.dart';

import 'cart.dart';


class MeatItemScreen extends StatelessWidget {
  const MeatItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final meatItems = context.watch<CartProvider>().meath;
    final cart = context.watch<CartProvider>().cart;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainTitle(title: "Meat"),
            Expanded(
              child: GridView.builder(
                  itemCount: meatItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.4),
                  itemBuilder: (context, index) => ProductItemCard(
                    title: meatItems[index].name,
                    price: meatItems[index].price.toString(),
                    imageUrl: meatItems[index].image,
                    onPressed: () {
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(meatItems[index]);
                    },
                  )),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CartScreen();
          },
        )),
        child:const Wrap(children: [
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),

        ]),
      ),
    );
  }
}