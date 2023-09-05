import 'package:flutter/material.dart';
import 'package:meet_shop/Meet%20shop/model/product.dart';
import 'package:meet_shop/Meet%20shop/widget/category_page.dart';
import 'package:meet_shop/Meet%20shop/widget/main_tile.dart';



class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List shoesBrand = [
      CategoryType.meat,
      CategoryType.fish,
      CategoryType.marinateditems,
      CategoryType.Readytocook
    ];
    List titleBrand = ["Meat", "Fish", "Marinated Items", "Ready to cook"];
    List brandImageUrl = [
      "https://images.unsplash.com/photo-1603048297172-c92544798d5a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fG1lYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1498654200943-1088dd4438ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG1lYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      "https://media.istockphoto.com/id/1071714902/photo/marinated-chicken-pieces.jpg?s=612x612&w=0&k=20&c=ewFVUW4ERnUvh2acOM1GbcHyE0tzNVAR73LieZVgAHA=",
      "https://images.unsplash.com/photo-1527477396000-e27163b481c2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTU1fHxtZWF0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60https://media.istockphoto.com/id/1129855093/photo/casual-shoes.webp?b=1&s=170667a&w=0&k=20&c=h_RoF1KSog-GD4mc8QfwGb4BHklc71HAMXveOnBiWyE="
    ];
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainTitle(title: "Hey Ayoob,"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Let's order fresh items for you",
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