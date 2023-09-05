import 'package:flutter/material.dart';
import 'package:meet_shop/Meet%20shop/provider/cart.dart';
import 'package:meet_shop/Meet%20shop/widget/main_tile.dart';
import 'package:provider/provider.dart';



class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cartHome = context.watch<CartProvider>().cart;
    num totalAmt = 0;
    for (var item in cartHome) {
      totalAmt += (item.price * item.count);
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          MainTitle(title: "Cart"),
          Expanded(
            child: ListView.builder(
              itemCount: cartHome.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        cartHome[index].image),
                  ),
                  title: Text(cartHome[index].name),
                  subtitle: Text(cartHome[index].price.toString()),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(cartHome[index].count.toString()),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            height: 120,
            margin: EdgeInsets.all(40),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainTitle(title: "Total\n$totalAmt"),
                ElevatedButton(onPressed: () {}, child: Text("Pay Now"))
              ],
            ),
          )
        ],
      ),
    );
  }
}