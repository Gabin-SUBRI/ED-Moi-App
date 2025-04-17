import 'package:flutter/material.dart';
import 'package:testflutter1/page/AppBar/customappbar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C3B2E),
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white24,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              'PRÉNOM NOM',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                StatCounter(title: 'TERMINÉS', value: '10'),
                StatCounter(title: 'EN COURS', value: '2'),
              ],
            ),
            const SizedBox(height: 30),
            const TrophiesSection(),
            const SizedBox(height: 30),
            const SettingsSection(),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: const Text(
                'DÉCONNEXION',
                style: TextStyle(color: Color(0xFFFFC700), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatCounter extends StatelessWidget {
  final String title;
  final String value;

  const StatCounter({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}

class TrophiesSection extends StatelessWidget {
  const TrophiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF145232),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const Text(
            'TROPHÉES',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              TrophyItem(label: 'CUISINIER'),
              TrophyItem(label: 'INFORMATION'),
              TrophyItem(label: 'PLOMBIER'),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0C2B1B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('VOIR TOUT',
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

class TrophyItem extends StatelessWidget {
  final String label;

  const TrophyItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.emoji_events, color: Colors.white, size: 32),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }
}

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SettingsItem(label: 'Informations personnelles'),
        SettingsItem(label: 'Connexion et sécurité'),
        SettingsItem(label: 'Accessibilité'),
      ],
    );
  }
}

class SettingsItem extends StatelessWidget {
  final String label;

  const SettingsItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          onTap: () {},
        ),
        const Divider(color: Colors.white24),
      ],
    );
  }
}
