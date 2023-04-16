/*
  * Util/Dependency imports
 */
import 'package:flutter/material.dart';
import 'package:app/utils/app.routes.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // Controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Defines the value if the text needs to be obscured
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container style
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      width: 300,
      height: 450,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          // Makes the column take up all the remaining space
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 40),
              child: Text(
                "Recognition platform for schools",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Email text input field
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: "Lietotājvārds",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // Password text input field
            TextFormField(
              obscureText: _obscureText,
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: "Parole",
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // Buttons for to sign in the user
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.of(context).pushNamed(AppRoutes.baseRoute);
                    },
                    child: const Text("Ienākt"),
                  ),
                  const SizedBox(
                    height: 10,
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
