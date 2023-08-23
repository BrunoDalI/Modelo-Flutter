import 'package:flutter/material.dart';
import '../controllers/login_controller.dart';
import '../models/login_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var loginController = LoginController();
  final LoginModel loginModel = LoginModel();
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                  borderRadius: BorderRadius.circular(20.0),
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
                  clipBehavior: Clip.none,
                  children: [
                    Card(
                      color:  Colors.white.withOpacity(0.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 116.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              loginController.fieldLogin(_usernameController),
                              const SizedBox(height: 10),
                              loginController.fieldPass(_passwordController),
                              const SizedBox(height: 20),
                              SizedBox(height: 50, width: 250, child: loginController.loginButton(context, _formkey, _usernameController, _passwordController),),
                              const SizedBox(height: 10),
                              loginController.newUserButton(context),
                            ],
                          ),
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
                        clipBehavior: Clip.antiAlias,
                        child: const CircleAvatar(
                          radius: 50, 
                          backgroundImage: AssetImage('assets/images/logo.png'),
                        ),
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
