import 'package:flutter/material.dart';

class LoginModel {
  final String? id;
  final TextEditingController? username;
  final TextEditingController? password;

  LoginModel({
    this.id,
    this.username,
    this.password,
  });
}
