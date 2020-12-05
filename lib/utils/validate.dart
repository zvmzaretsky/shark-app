import 'package:flutter/material.dart';

import 'package:fish_app/screens/search.dart';
import 'package:fish_app/screens/login.dart';

bool loggedIn = false;

Widget validate(){
  return loggedIn ? Search() : Login();
}