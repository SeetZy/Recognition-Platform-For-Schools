/*
  * Util/Dependency imports
 */
import 'package:app/pages/home.dart';
import 'package:app/pages/profile.dart';
import 'package:app/pages/scan.code.dart';
import 'package:app/pages/settings.dart';
import 'package:flutter/material.dart';
// ? https://pub.dev/packages/curved_navigation_bar
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Baseplate extends StatefulWidget {
  const Baseplate({super.key});
  @override
  State<Baseplate> createState() => _BaseplateState();
}

class _BaseplateState extends State<Baseplate> {
  int index = 0;

  final pages = [
    const HomePage(),
    const ScanQrCode(),
    const ProfilePage(),
    const SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.deepPurple,
        index: index,
        onTap: (index) => setState(() => this.index = index),
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.qr_code,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
