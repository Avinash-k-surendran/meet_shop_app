import 'package:flutter/material.dart';

import 'category.dart';


class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(

          children: [
            Image.network(
              "https://images.unsplash.com/photo-1602470520998-f4a52199a3d6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG1lYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
              fit: BoxFit.contain,
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "We Deliver fresh\nmeats at your \ndoorstep ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 46,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const CategoryScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStatePropertyAll(Colors.greenAccent),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}