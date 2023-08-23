// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:modeloflutter/utils/show_snack_bar_utils.dart';
import '../services/login_service.dart';

class LoginController {
  final LoginService _loginService = LoginService();
  final ShowSnackBarUtils _showSnackBarUtils = ShowSnackBarUtils();

  Widget fieldLogin(TextEditingController? usernameController) {
    return TextFormField(
      controller: usernameController,
      decoration: const InputDecoration(
        labelText: 'Username',
        border: OutlineInputBorder(),
        hintText: 'Digite o username',
      ),
      keyboardType: TextInputType.text,
      validator: (username) {
        if (username == null || username.isEmpty) {
          return 'Por favor, digite um username';
        }
        return null;
      },
    );
  }

  Widget fieldPass(TextEditingController? passwordController) {
    return TextFormField(
      controller: passwordController,
      decoration: const InputDecoration(
        labelText: 'Senha',
        border: OutlineInputBorder(),
        hintText: 'Digite a Senha',
      ),
      keyboardType: TextInputType.visiblePassword,
      validator: (password) {
        if (password == null || password.isEmpty) {
          return 'Por favor, digite uma senha';
        }
        return null;
      },
    );
  }

  Widget loginButton(BuildContext context, GlobalKey<FormState> formkey, TextEditingController? usernameController, TextEditingController? passwordController) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
      ),
      child: const Text(
        'Entrar',
        style: TextStyle(fontSize: 18.0),
      ),
      onPressed: () async {
        if (formkey.currentState!.validate()) {
          final username = usernameController!.text;
          final password = passwordController!.text;

          final success = await _loginService.login(username, password);

          if (success != null) {
            Navigator.pushReplacementNamed(context, '/home');
          } else {
            _showSnackBarUtils.showSnackError(context, 'Credenciais inválidas');
          }
        }
      },
    );
  }


  Widget newUserButton(context){
    return TextButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/newuser'); 
      },
      child: const Text('Novo Usuário? Cadastre-se', style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
