/*
  * Page route imports
 */
import 'package:app/components/baseplate.dart';
import 'package:app/pages/sign-in.dart';

// This file contains the routes for different pages in the app
class AppRoutes {
  // Constants are defined for each of the routes
  static const String baseRoute = "/base-page";
  static const String signInRoute = "/sign-in";

  // A map is created which links each route to its corresponding page class
  static final routes = {
    baseRoute: (context) => const Baseplate(),
    signInRoute: (context) => const SignInPage(),
  };
}
