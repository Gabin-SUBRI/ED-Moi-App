import 'package:flutter/material.dart';
import 'package:testflutter1/page/AppBar/customappbar.dart';

class Cuisine extends StatelessWidget {
  const Cuisine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C3B2E),
      appBar: const CustomAppBar(),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsetsDirectional.only(top: 30),
        children: [
          // Calendrier en haut
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "CUISINE",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 5),

          // Miniatures des vidéos
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/italien.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "User12 - il y a 4h",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Row(
                      children: List.generate(5, (index) {
                        return const Icon(
                          Icons.star,
                          color: Color(0xFFFFBA00),
                          size: 18,
                        );
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/soupe.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "User2444 - il y a 5h",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Row(
                      children: List.generate(5, (index) {
                        return const Icon(
                          Icons.star,
                          color: Color(0xFFFFBA00),
                          size: 18,
                        );
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/tacos.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "User1 - il y a 10h",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Row(
                      children: List.generate(5, (index) {
                        return const Icon(
                          Icons.star,
                          color: Color(0xFFFFBA00),
                          size: 18,
                        );
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/pizza.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "User2 - il y a 3j",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Row(
                      children: List.generate(5, (index) {
                        return const Icon(
                          Icons.star,
                          color: Color(0xFFFFBA00),
                          size: 18,
                        );
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
