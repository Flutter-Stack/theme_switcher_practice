import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_switcher/models_provider/ThemeProvider.dart';

class ThemeChangerPage extends StatefulWidget {
  ThemeChangerPage({Key key}) : super(key: key);

  @override
  _ThemeChangerPageState createState() => _ThemeChangerPageState();
}

class _ThemeChangerPageState extends State<ThemeChangerPage> {

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Switch(
                  value: themeProvider.isLightTheme,
                  onChanged: (val) {
                    themeProvider.setThemeData = val;
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
              "You’re probably here to learn custom software development cost. Software development pricing is a crucial factor for anyone who intends to build something digital"
                )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Icon(Icons.accessibility_new), Icon(Icons.account_balance), Icon(Icons.account_box)],
          )
        ],
      ),
    );
  }
}