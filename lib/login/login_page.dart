// form username (onChange validasi)
// form password (onChange Validasi)
// button login (disable/enable button dari validasi di atas)
import 'package:belajar_provider/login/button_login.dart';
import 'package:belajar_provider/login/form_password.dart';
import 'package:belajar_provider/login/form_username.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Form',
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              FormUsername(),
              FormPassword(),
              SizedBox(
                height: 24,
              ),
              ButtonLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
