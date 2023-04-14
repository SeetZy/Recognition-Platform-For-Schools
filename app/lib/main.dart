/*
  * Util/Dependency imports
 */
import 'package:flutter/material.dart';
import 'package:app/utils/app.routes.dart';

/*
  * Page/Component imports
 */
import 'package:app/pages/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Defines all the routes
      routes: AppRoutes.routes,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
      ),
      home: const Scaffold(body: HomePage()),
    );
  }
}
