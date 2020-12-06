import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String _name = "JohnDoe";
    String _email = "johndoe@company.com";

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  _name,
                  style: Theme.of(context).textTheme.headline1.copyWith(
                    fontSize: 30,
                  )
              ),
              Text(
                _email,
                style: Theme.of(context).textTheme.headline1.copyWith(
                    fontSize: 30,
                  ),
              ),
            ],
          )
      )
    );
  }
}