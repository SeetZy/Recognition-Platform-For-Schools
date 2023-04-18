// ignore_for_file: file_names

/*
  * Util/Dependency imports
 */
import 'package:flutter/material.dart';
// ? https://pub.dev/packages/animate_gradient
import 'package:animate_gradient/animate_gradient.dart';

/*
  * Page/Component imports
 */
import 'package:app/components/login.form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Sets the animated background gradient
      body: AnimateGradient(
        primaryBegin: Alignment.topLeft,
        primaryEnd: Alignment.bottomLeft,
        secondaryBegin: Alignment.bottomLeft,
        secondaryEnd: Alignment.topRight,
        primaryColors: const [
          Colors.pink,
          Colors.pinkAccent,
          Colors.purple,
        ],
        secondaryColors: const [
          Colors.purple,
          Colors.deepPurpleAccent,
          Colors.deepPurple,
        ],
        child: const Center(
          child: LoginForm(),
        ),
      ),
    );
  }
}
