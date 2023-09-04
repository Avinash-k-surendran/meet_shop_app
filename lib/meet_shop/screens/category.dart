import 'package:flutter/material.dart';

import '../Models/product_models.dart';
import '../widget/category_item.dart';
import '../widget/main_tile.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List shoesBrand = [
      CategoryType.fish,
      CategoryType.chicken,
      CategoryType.spicy,
      CategoryType.vegetables
    ];
    List titleBrand = ["fish", "chicken", "spicy", "vegetables"];
    List brandImageUrl = [
      "https://images.unsplash.com/photo-1626253836448-e2376678c191?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZmlzaCUyMGZyeXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
      "https://images.unsplash.com/photo-1600555379765-f82335a7b1b0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hpY2tlbiUyMGZyeXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
      "https://media.istockphoto.com/id/1414265444/photo/chicken-burger.webp?b=1&s=170667a&w=0&k=20&c=aIhhEXrGpm6slUi07lbioI7hViG_TEAlB2vHssQfbGU=",
      "https://media.istockphoto.com/id/509642295/photo/wicker-basket-with-groceries-isolated-on-white.webp?b=1&s=170667a&w=0&k=20&c=c-PCj-RWYcJfHA5qKJ9BAW27sBHzId8ZBr57b3aiTTQ="

    ];
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainTitle(title: "Hey,\n welcome you"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Buy your Favourite item through this app .",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: shoesBrand.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1 / 1.4),
                itemBuilder: (context, index) => CategoryItemCard(
                    title: titleBrand[index],
                    imageUrl: brandImageUrl[index],
                    brand: shoesBrand[index] as CategoryType),
              ),
            ),
          ],
        ),
      ),
    );
  }
}