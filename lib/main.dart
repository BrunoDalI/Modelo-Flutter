import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primaryContainer: const Color.fromARGB(255, 0, 44, 94),
          primary: const Color.fromARGB(255, 0, 44, 94),
          onSecondary: const Color.fromARGB(255, 0, 44, 94),
          secondary: Colors.black,
        ),
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: const Color.fromARGB(255, 54, 63, 149),
        // fontFamily: 'Georgia',
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 44, 94)),
      ),
      title: 'Modelo em Flutter',
      debugShowCheckedModeBanner: false,
      getPages: AppViews.routes,
    );
  }
}
