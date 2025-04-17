import 'package:flutter/material.dart';
import 'package:testflutter1/page/AppBar/customappbar.dart';

class Creer extends StatelessWidget {
  const Creer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C3B2E),
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(top: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "CREER UNE\nFORMATION",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 5),

            //TextField 1 Nom de la formation
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Nom de la formation",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),

                  const SizedBox(height: 8),

                  SizedBox(
                    width: double.infinity,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Color(0xFFFFBA00),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF1E1E1E),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFFFBA00),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            //TextField 2 Explication
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Explication",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),

                  const SizedBox(height: 8),

                  SizedBox(
                    width: double.infinity,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Color(0xFFFFBA00),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF1E1E1E),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFFFBA00),
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            //Logo uplaod pour vidéo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Upload une vidéo/texte",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    width: 400,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.upload_sharp,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            //BOUTON UPLOAD
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0xFF1E1E1E),
                        foregroundColor: Colors.white,
                        side: BorderSide(color: Colors.transparent),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        "Publier",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
