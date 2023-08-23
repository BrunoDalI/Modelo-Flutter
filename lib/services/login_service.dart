// ignore_for_file: prefer_typing_uninitialized_variables, control_flow_in_finally

import 'package:flutter/widgets.dart';
import '../models/login_model.dart';


class LoginService {
  Future<LoginModel?> login(String username, String password) async {
    var response;
    try {
      await Future.delayed(const Duration(seconds: 2));
      
      if (username == '123' && password == '123') {
        response = LoginModel(
          id: '1',
          username: TextEditingController(text: username),
          password: TextEditingController(text: password),
        );
      }
    } catch (error) {
      response = null; // Credenciais inválidas
    } finally {
      return response;
    }
  }
}
