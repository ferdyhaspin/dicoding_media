// Created by ferdyhaspin on 22/06/21.
import 'package:dicoding_media/screen/login/login_screen.dart';
import 'package:dicoding_media/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart' as Splash;

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Splash.SplashScreen(
        seconds: 3,
        navigateAfterSeconds: LoginScreen(),
        image: Image.asset('assets/images/dicoding-logo-full.png'),
        backgroundColor: Colors.white,
        photoSize: 150.0,
        loaderColor: COLOR_ACCENT);
  }
}