// ignore_for_file: unused_local_variable, avoid_print

import 'package:flutter/material.dart';

class LoginController {

  Widget fieldLogin(loginController) {
    return TextFormField(
      controller: loginController,
      decoration: const InputDecoration(
        labelText: 'Login',
        border: OutlineInputBorder(),
        hintText: 'Digite o login',
      ),
      keyboardType: TextInputType.text,
      validator: (login) {
        if (login == null || login.isEmpty) {
          return 'Por favor, digite um login';
        }
        return null;
      }
    );
  }

  Widget fieldPass(passwordController) {
    return TextFormField(
      controller: passwordController,
      decoration: const InputDecoration(
        labelText: 'Senha',
        border: OutlineInputBorder(),
        hintText: 'Digite a Senha',
      ),
      keyboardType: TextInputType.text,
      validator: (login) {
        if (login == null || login.isEmpty) {
          return 'Por favor, digite uma senha';
        }
        return null;
      }
    );
  }


  Widget loginButton(context, formkey) {
      return ElevatedButton(
        child: const Text('Entrar'),
        onPressed: () async {
          FocusScopeNode currentFocus = FocusScope.of(context);
          print('realizando login ......');
        },
      );
    // } else {
    //   return const ElevatedButton(onPressed: null, child: Text('Entrar'));
    // }
  }
}