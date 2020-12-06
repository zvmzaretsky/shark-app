import 'package:fish_app/screens/login.dart';
import 'package:fish_app/utils/role.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatefulWidget {
  static const String route = "/signup";

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var _key;
  String _email = "", _password = "", _name = "";
  Role role = Role.fisherman;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                child: SvgPicture.asset("lib/assets/bg1.svg"),
                bottom: 0,
                right: 0),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  Text(
                    "I am a",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          role = Role.fisherman;
                        });
                      },
                      child: Column(
                        children: [
                          SvgPicture.asset("lib/assets/fisherman.svg"),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          Text("Fisherman",
                              style: Theme.of(context).textTheme.subtitle1)
                        ],
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                    InkWell(
                      onTap: () {
                        role = Role.customer;
                      },
                      child: Column(
                        children: [
                          SvgPicture.asset("lib/assets/customer.svg"),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          Text("Customer",
                              style: Theme.of(context).textTheme.subtitle1)
                        ],
                      ),
                    ),
                  ]),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Form(
                    key: _key,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.2),
                      child: Column(children: [
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
                              onChanged: (value) {
                                setState(() {
                                  _name = value;
                                });
                              },
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter your Name";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: 'Complete Name',
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.only(
                                    left: 20.0,
                                    right: 20.0,
                                    top: 20.0,
                                    bottom: 15.0
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                                  borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                                  borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 0),
                                ),
                              ),
                            ),
                          ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.025),
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
                            onChanged: (value) {
                              setState(() {
                                _email = value;
                              });
                            },
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Please enter an Email";
                              } else if (!(value.contains('@') &&
                                  value.contains('.')) ||
                                  value.contains(' ')) {
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
                                  bottom: 15.0
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025),
                        TextFormField(
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
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                                top: 20.0,
                                bottom: 15.0
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025),
                        TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter a Password";
                            } else if (value.length < 6) {
                              return "Password is too short";
                            } else if (value != _password) {
                              return "The password does not match";
                            } else {
                              return null;
                            }
                          },
                          enableSuggestions: false,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                                top: 20.0,
                                bottom: 15.0
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025),
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
                            onTap: () {
                              if (_key.currentState.validate()) {
                                _key.currentState.save();
                              }
                            },
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).accentColor,
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              ),
                              padding: EdgeInsets.only(
                                  top: 16.0
                              ),
                              child: Text("Sign Up",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle1
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  FlatButton(
                    splashColor: Colors.transparent,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Login(),
                        ),
                      );
                    },
                    child: Text("Login",
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
