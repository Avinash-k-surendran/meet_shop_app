import 'package:flutter/material.dart';
import 'package:meet_shop/Meet%20shop/model/product.dart';
import 'package:meet_shop/Meet%20shop/screen/meet.dart';


class CategoryItemCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final CategoryType brand;
  const CategoryItemCard(
      {super.key, required this.title, required this.imageUrl, required this.brand});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 250,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black54)),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 185,
            decoration: BoxDecoration(
              borderRadius:const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold,fontSize:16 ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MeatItemScreen()),);
                }, child: const Text("View More")),
          ),
        ],
      ),
    );
  }
}