/*
  * Page route imports
 */
import 'package:app/pages/home.dart';

// This file contains the routes for different pages in the app
class AppRoutes {
  // Constants are defined for each of the routes
  static const String homeRoute = "/home";

  // A map is created which links each route to its corresponding page class
  static final routes = {
    homeRoute: (context) => const HomePage(),
  };
}
