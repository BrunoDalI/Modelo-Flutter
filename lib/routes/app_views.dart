// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import '../views/home_view.dart';
import '../views/login_view.dart';
import 'app_routes.dart';
import '../views/load_view.dart';

class AppViews {
  AppViews._();
  static const INITIAL = Routes.LOAD;

  static final routes = [
    GetPage(
      name: Routes.LOAD,
      page: () => const LoadView(),
    ),

    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginView(),
    ),

    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
    ),
  ];
}