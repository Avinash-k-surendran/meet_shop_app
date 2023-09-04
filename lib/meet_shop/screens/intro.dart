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
            Image.asset(
              "assets/images/icon of shop.webp",
              fit: BoxFit.contain,
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Welcome to \nour online \nMEET shop.",
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
                  "Shop Now",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStatePropertyAll(Colors.lightBlueAccent),
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