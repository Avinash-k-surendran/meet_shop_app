import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Text(
        title,
        style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}