import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';
import '../widget/main_tile.dart';
import '../widget/product_item.dart';
import 'cart_screens.dart';

class AdidasItemScreen extends StatelessWidget {
  const AdidasItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final adidasItems = context.watch<CartProvider>().adidasItems;
    final cart = context.watch<CartProvider>().cart;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainTitle(title: "Fishes"),
            Expanded(
              child: GridView.builder(
                  itemCount: Fishes.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.4),
                  itemBuilder: (context, index) => ProductItemCard(
                    title: Fishes[index].name,
                    price: Fishes[index].price.toString(),
                    imageUrl: Fishes[index].image,
                    onPressed: () {
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(adidasItems[index]);
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
        child: Wrap(children: [
          Icon(
            Icons.shopping_bag,
            color: Colors.red,
          ),

        ]),
      ),
    );
  }
}