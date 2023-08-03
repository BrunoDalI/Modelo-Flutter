import 'package:flutter/material.dart';
import 'package:modeloflutter/controllers/login_controller.dart';

import '../models/login_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var loginController = LoginController();
  var loginModel = LoginModel();
  final _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.black],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Form(
              key: _formkey,
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.none, children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 116.0, 16.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            loginController.fieldLogin(loginModel.login),
                            const SizedBox(height: 10),
                            loginController.fieldPass(loginModel.password),
                            const SizedBox(height: 10),
                            SizedBox(height: 50, child: loginController.loginButton(context, _formkey)),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -50,
                      left: 75,
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 3.0),
                        ),
                        clipBehavior: Clip.antiAlias, // Define o corte anti-aliasing para a forma circular
                        child: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}