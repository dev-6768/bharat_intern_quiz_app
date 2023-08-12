import 'package:flutter/material.dart';

class MyThemeData {

  ThemeData MyThemeDataForApp(BuildContext context) {
      ThemeData themeDataApp = ThemeData(
      primaryColor: Color.fromARGB(255, 68, 90, 252),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    );
    return themeDataApp;
  }
}