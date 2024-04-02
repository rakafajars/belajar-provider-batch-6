import 'package:belajar_provider/login/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormPassword extends StatelessWidget {
  const FormPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(
      builder: (context, provider, child) {
        return TextFormField(
          decoration: InputDecoration(
            hintText: 'Password',
            errorText: provider.errorPassword,
            suffixIcon: IconButton(
              onPressed: () {
                provider.showHidePassword();
              },
              icon: provider.hidePassword
                  ? const Icon(
                      Icons.lock,
                    )
                  : const Icon(
                      Icons.lock_open_outlined,
                    ),
            ),
          ),
          obscureText: provider.hidePassword,
          onChanged: (value) {
            provider.validatorPassword(value);
          },
        );
      },
    );
  }
}
