import 'package:fish_app/widgets/chat.dart';
import 'package:fish_app/widgets/profile.dart';
import 'package:fish_app/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  static const String route = "/home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens = [Chat(), Search(), Profile()];
  List<String> icons = [
    "lib/assets/chat.svg",
    "lib/assets/search.svg",
    "lib/assets/profile.svg"
  ];
  int activeScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Positioned(
            child: screens[activeScreen],
          ),
          Positioned(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3,
                    spreadRadius: 3,
                  )
                ],
              ),
              padding: EdgeInsets.only(left: 25),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: icons.length,
                itemBuilder: ((_, index) {
                  return InkWell(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1 ),
                      child: SvgPicture.asset(
                        icons[index],
                        color:
                        activeScreen == index ?
                        Theme.of(context).accentColor :
                        Theme.of(context).primaryColor
                      ),
                    ),
                    onTap: () {
                      setState(
                        () {
                          activeScreen = index;
                        },
                      );
                    }
                  );
                }),
              ),
            ),
            bottom: 0,
          )
        ]),
      ),
    );
  }
}
