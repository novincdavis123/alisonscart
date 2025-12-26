import 'package:flutter/material.dart';

class PasswordVisibilityNotifier extends ChangeNotifier {
  bool _obscurePassword = true;

  bool get obscurePassword => _obscurePassword;

  void toggle() {
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }
}
