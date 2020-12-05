import 'package:flutter/material.dart';

import 'package:fish_app/screens/home.dart';
import 'package:fish_app/screens/login.dart';

bool loggedIn = false;

Widget validate(){
  return loggedIn ? Home() : Login();
}