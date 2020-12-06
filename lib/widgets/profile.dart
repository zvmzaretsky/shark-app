import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String _name = "name";
    String _email = "email";

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: Column(
            children: [
              Text(
                  _name,
                  style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                _email,
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          )
      )
    );
  }
}