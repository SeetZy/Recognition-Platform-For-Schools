/*
  * Util/Dependency imports
 */
import 'package:flutter/material.dart';
// ? https://pub.dev/packages/curved_navigation_bar
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

/*
  * Page/Component imports
 */
import 'package:app/pages/home.dart';
import 'package:app/pages/profile.dart';
import 'package:app/pages/scan.code.dart';
import 'package:app/pages/settings.dart';

class Baseplate extends StatefulWidget {
  const Baseplate({super.key});
  @override
  State<Baseplate> createState() => _BaseplateState();
}

class _BaseplateState extends State<Baseplate> {
  // Page navigation index
  int index = 0;

  // Pages that the navigation bar uses
  final pages = [
    const HomePage(),
    const ScanQrCode(),
    const ProfilePage(),
    const SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[index]),
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        backgroundColor: Colors.white,
        color: Colors.deepPurple,
        index: index,
        // Navigates to a specific page based on the index
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
