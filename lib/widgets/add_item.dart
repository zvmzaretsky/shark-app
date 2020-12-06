import 'package:fish_app/screens/home.dart';
import 'package:fish_app/screens/login.dart';
import 'package:fish_app/utils/role.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String _name = "";
    String _price = "";
    String _description = "";
    String _fisherman = "";

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                child: SvgPicture.asset("lib/assets/bg1.svg"),
                bottom: 0,
                right: 0
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.4),
                  Form(

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

                            },
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Please enter fish name";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              hintText: 'Fish name',
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

                            },
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Please enter description";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              hintText: 'Description',
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
                        TextFormField(
                          onChanged: (value) {

                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter price";
                            } else {
                              return null;
                            }
                          },
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Price',
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
                          child: InkWell(
                            splashColor: Colors.grey,
                            onTap: () {

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