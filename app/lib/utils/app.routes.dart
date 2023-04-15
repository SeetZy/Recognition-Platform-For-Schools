/*
  * Page route imports
 */
import 'package:app/pages/login.dart';

// This file contains the routes for different pages in the app
class AppRoutes {
  // Constants are defined for each of the routes
  static const String loginRoute = "/login";

  // A map is created which links each route to its corresponding page class
  static final routes = {
    loginRoute: (context) => const LoginPage(),
  };
}
