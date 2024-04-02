import 'package:belajar_provider/login/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormUsername extends StatefulWidget {
  const FormUsername({
    super.key,
  });

  @override
  State<FormUsername> createState() => _FormUsernameState();
}

class _FormUsernameState extends State<FormUsername> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(
      builder: (context, provider, child) {
        return TextFormField(
          decoration: InputDecoration(
            hintText: 'Username',
            errorText: provider.errorUsername,
          ),
          onChanged: (value) {
            provider.validatorUsername(value);
          },
        );
      },
    );
  }
}
