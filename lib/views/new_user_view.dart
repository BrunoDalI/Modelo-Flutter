import 'package:flutter/material.dart';

class NewUserView extends StatefulWidget {
  const NewUserView({super.key});
  @override
  State<NewUserView> createState() => _NewUserViewState();
}

class _NewUserViewState extends State<NewUserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de novo usuario'),
      ),
      body: const Center(
        child: Text('Cadastro de novos usuarios!'),
      ),
    );
  }
}