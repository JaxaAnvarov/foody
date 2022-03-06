import 'package:flutter/material.dart';
import 'package:foody/screens/splash_screens.dart';

class AppRoutes {
  static generateRoute(RouteSettings routeSettings) {
    var arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SplashScreens(),
        );
    }
  }
}
