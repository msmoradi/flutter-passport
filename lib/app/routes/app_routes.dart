part of 'app_pages.dart';

abstract class Routes {
  static const home = _Paths.home;
  static const profile = _Paths.home + _Paths.profile;
}

abstract class _Paths {
  static const home = '/home';
  static const profile = '/profile';
}
