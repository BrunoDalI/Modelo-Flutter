// ignore_for_file: unnecessary_const
import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class LoadView extends StatefulWidget {
  const LoadView({super.key});

  @override
  State<LoadView> createState() => _LoadViewState();
}

class _LoadViewState extends State<LoadView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(Routes.HOME);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(size: 150),
      ),
    );
  }
}