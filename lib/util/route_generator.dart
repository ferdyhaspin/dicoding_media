// Created by ferdyhaspin on 09/03/21.

import 'package:dicoding_media/screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class Routes {
  static const String SPLASH = "/splash";
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
      case Routes.SPLASH:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text(
            'Coming Soon...',
            style: TextStyle(
              fontSize: FONT_XLARGE,
            ),
          ),
        ),
      );
    });
  }
}
