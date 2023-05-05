/*
  * Library imports
 */
import 'package:app/utils/http.routes.dart';
// ? https://pub.dev/packages/dio
import 'package:dio/dio.dart';

class UserAuthorization {
  static final dio = Dio();

  static void signIn() async {
    final response = await dio.post(HttpRoutes.signInHtpp);
  }
}
