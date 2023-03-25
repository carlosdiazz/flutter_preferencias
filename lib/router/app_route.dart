import 'package:flutter/material.dart';
import 'package:preferencias_user/screen/screen.dart';

class AppRoute {
  static const homeRoute = 'home';
  static const settingsRoute = 'settings';

  static Map<String, Widget Function(BuildContext)> routes = {
    homeRoute: (context) => const HomeScrenn(),
    settingsRoute: (context) => const SettingsScreen()
  };
}
