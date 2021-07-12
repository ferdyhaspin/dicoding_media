import 'package:dicoding_media/util/constant.dart';
import 'package:dicoding_media/util/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dicoding Media',
      theme: ThemeData(
        accentColor: COLOR_ACCENT,
        primaryColor: COLOR_PRIMARY,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Google",
        scaffoldBackgroundColor: COLOR_BACKGROUND,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 1,
            textTheme: TextTheme(
                headline6: TextStyle(
                    color: Colors.black87,
                    fontSize: FONT_LARGE,
                    fontWeight: FontWeight.w300)),
            iconTheme: IconThemeData(color: Colors.black87)),
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      builder: EasyLoading.init(),
    );
  }
}
