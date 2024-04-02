import 'package:belajar_provider/splash/splash_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<SplashProvider>(context);
    loginProvider.checkLogin(context);
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.flutter_dash,
          size: 100,
        ),
      ),
    );
  }
}
