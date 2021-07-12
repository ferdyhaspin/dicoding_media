// Created by ferdyhaspin on 22/06/21.
import 'package:dicoding_media/screen/intro/intro_screen.dart';
import 'package:dicoding_media/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart' as Splash;

import 'login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State {
  dynamic _screen = IntroScreen();

  @override
  void initState() {
    _getScreen();
    super.initState();
  }

  Future<void> _getScreen() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (preferences.getBool(PREFS_INTRODUCTION) != null) {
      setState(() {
        _screen = LoginScreen();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Splash.SplashScreen(
        seconds: 3,
        navigateAfterSeconds: _screen,
        image: Image.asset('assets/images/dicoding-logo-full.png'),
        backgroundColor: Colors.white,
        photoSize: 150.0,
        loaderColor: COLOR_ACCENT);
  }
}
