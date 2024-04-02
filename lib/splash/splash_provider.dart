import 'package:belajar_provider/home.dart';
import 'package:belajar_provider/login/login_page.dart';
import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  String? _token;
  String? get token => _token;

  void checkLogin(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      if (token != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      }
    });
  }
}
