import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;

  const CustomAppBar({super.key, this.showBackButton = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Color(0xFF1E1E1E),
        automaticallyImplyLeading: showBackButton,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Image.asset(
              'assets/images/logo.png',
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
            ),
            const Spacer(),
            const Text("Profil", style: TextStyle(color: Colors.white)),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: const Icon(Icons.account_circle_rounded, color: Colors.white, size: 50),
            ),
          ],
        ),
      );
  }
  @override
  Size get preferredSize => const Size.fromHeight(55);
}