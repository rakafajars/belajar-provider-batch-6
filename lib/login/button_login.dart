import 'package:belajar_provider/home.dart';
import 'package:belajar_provider/login/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(
      builder: (context, value, child) {
        return ElevatedButton(
          onPressed: value.isValidUsername && value.isValidPassword
              ? () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                }
              : null,
          child: const Text(
            'Login',
          ),
        );
      },
    );
  }
}
