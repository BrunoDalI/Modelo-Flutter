
// ignore_for_file: constant_identifier_names

abstract class Routes {
  Routes._();

  static const LOAD = _Paths.LOAD;
  static const LOGIN = _Paths.LOGIN;
  static const HOME = _Paths.HOME;
  static const NEWUSER = _Paths.NEWUSER;
}

abstract class _Paths {
  static const LOAD = '/';
  static const LOGIN = '/login';
  static const HOME = '/home';
  static const NEWUSER = '/newuser';
}