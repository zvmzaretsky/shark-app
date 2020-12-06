import 'package:fish_app/utils/user.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String _name = user["name"];
    String _email = user["email"];

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