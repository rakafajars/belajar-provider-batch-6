import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  String? _username;
  String? get username => _username;

  String? _errorUsername;
  String? get errorUsername => _errorUsername;

  bool _isValidUsername = false;
  bool get isValidUsername => _isValidUsername;

  void validatorUsername(
    String value,
  ) {
    if (value.isEmpty) {
      _errorUsername = 'Username tidak boleh kosong';
      _isValidUsername = false;
    } else if (value.length < 2) {
      _errorUsername = 'Username tidak boleh kurang dari 2';
      _isValidUsername = false;
    } else {
      _username = value;
      _errorUsername = null;
      _isValidUsername = true;
    }
    notifyListeners();
  }

  String? _password;
  String? get password => _password;

  String? _errorPassword;
  String? get errorPassword => _errorPassword;

  bool _hidePassword = true;
  bool get hidePassword => _hidePassword;

  bool _isValidPassword = false;
  bool get isValidPassword => _isValidPassword;

  void validatorPassword(String value) {
    if (value.isEmpty) {
      _errorPassword = 'Password tidak boleh kosong';
      _isValidPassword = false;
    } else if (value.length < 2) {
      _errorPassword = 'Password tidak boleh kurang dari 2';
      _isValidPassword = false;
    } else {
      _password = value;
      _isValidPassword = true;

      _errorPassword = null;
    }
    notifyListeners();
  }

  void showHidePassword() {
    _hidePassword = !hidePassword;
    notifyListeners();
  }
}
