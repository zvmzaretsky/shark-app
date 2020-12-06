import 'dart:convert';

import 'package:fish_app/screens/home.dart';
import 'package:fish_app/screens/signup.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  static const String route = "/login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _key;
  String _email = "", _password = "";
  bool incorrectPassword = false;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    Color _color1 = Colors.transparent;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: SvgPicture.asset(
                  "lib/assets/bg.svg",
                  fit: BoxFit.fill,
                ),
                top: 0,
                left: 0),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.35),
                  Form(
                    key: _key,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.2),
                      child: Column(children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: _color1, width: 1.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                _email = value;
                              });
                            },
                            validator: (value) {
                              if (value.isEmpty) {
                                _color1 = Colors.red;
                                return "Please enter an Email";
                              } else if (!(value.contains('@') &&
                                      value.contains('.')) ||
                                  value.contains(' ')) {
                                _color1 = Colors.red;
                                return "Please Enter a Valid Email";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                  top: 20.0,
                                  bottom: 15.0),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                borderSide:
                                    BorderSide(color: _color1, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                borderSide:
                                    BorderSide(color: _color1, width: 1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            obscureText: true,
                            onChanged: (value) {
                              setState(() {
                                _password = value;
                              });
                            },
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Please enter a Password";
                              } else if (value.length < 6) {
                                return "Password is too short";
                              } else {
                                return null;
                              }
                            },
                            textAlignVertical: TextAlignVertical.center,
                            enableSuggestions: false,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                  top: 20.0,
                                  bottom: 15.0),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Container(
                            child: incorrectPassword
                                ? Text("Incorrect password or email")
                                : SizedBox()),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: InkWell(
                            splashColor: Colors.grey,
                            onTap: () async {
                              if (_key.currentState.validate()) {
                                _key.currentState.save();
                                String url =
                                    "https://us-central1-aiot-fit-xlab.cloudfunctions.net/sharkhacklogin";
                                var body = json.encode(
                                    {"email": _email, "password": _password});
                                var response = await http.post(url,
                                    body: body,
                                    headers: {
                                      "Content-Type": "application/json"
                                    });
                                var res = json.decode(response.body);
                                if (res["status"])
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Home(),
                                      ));
                                else {
                                  setState(() {
                                    incorrectPassword = true;
                                  });
                                }
                              }
                            },
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              padding: EdgeInsets.only(top: 16.0),
                              child: Text("Login",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle1),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  FlatButton(
                    splashColor: Colors.transparent,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Signup(),
                        ),
                      );
                    },
                    child: Text("Sign Up",
                        style: Theme.of(context).textTheme.subtitle2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
