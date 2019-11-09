import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isLightTheme; 
   
  final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: Color(0xFFE5E5E5),
    accentColor: Colors.black,
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,   
  );

  final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: Color(0xFF000000),
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black54,
  );

  ThemeProvider({this.isLightTheme});

  // getThemeData will return the current theme.
  ThemeData get getThemedata => isLightTheme ? lightTheme : darkTheme;

  // setThemeData(bool val) is used to toggle between the light and dark theme
  set setThemeData(bool val) {
    if (val) {
      isLightTheme = true;
    }
    else {
      isLightTheme = false;
    }
    // Think of notifyListeners() as “set state” it will update the UI whenever it is called.
    notifyListeners();
  }
}