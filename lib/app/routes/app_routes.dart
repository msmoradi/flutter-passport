part of 'app_pages.dart';

abstract class Routes {
  static const home = _Paths.home;
  static const achievement = _Paths.home + _Paths.achievement;
  static const team = _Paths.home + _Paths.team;
  static const about = _Paths.home + _Paths.about;
}

abstract class _Paths {
  static const home = '/home';
  static const achievement = '/achievement';
  static const team = '/team';
  static const about = '/about';
}
