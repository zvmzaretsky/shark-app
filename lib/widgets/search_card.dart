import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Card extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    String _name = "name";
    String _price = "100USD";
    String _fisherman = "his name";

    return new Container(
        height: 300,
        width: MediaQuery.of(context).size.width*0.9,
        child: Row(
            children: [
              Column(
                  children: [
                    SvgPicture.asset(
                      "lib/assets/dummy.svg",
                      fit: BoxFit.cover,
                    )
                  ]
              ),
              Column(
                  children: [
                    Text(
                      _name
                    ),
                    Text(
                        _price
                    ),
                    Text(
                        _fisherman
                    )
                  ],
              )
            ],
        ),
    );
  }
}