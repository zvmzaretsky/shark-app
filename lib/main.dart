import 'package:fish_app/screens/search.dart';
import 'package:fish_app/screens/login.dart';
import 'package:fish_app/screens/signup.dart';
import 'package:fish_app/utils/validate.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (ctx) => validate(),
        Login.route : (ctx) => Login(),
        Signup.route : (ctx) => Signup(),
        Search.route : (ctx) => Search(),
      },
      theme: ThemeData(
        primaryColor: Color.fromRGBO(73, 97, 222, 1),
        accentColor: Color.fromRGBO(69, 222, 232, 1),
        textTheme: TextTheme(
          subtitle1: TextStyle(
            color: Color.fromRGBO(73, 97, 222, 1),
            fontSize: 14
          ),
          subtitle2: TextStyle(
            color: Color.fromRGBO(69, 222, 232, 1),
            fontSize: 14
          ),
        )
      ),
    );
  }
}