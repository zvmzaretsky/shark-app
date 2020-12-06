import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String _name = "name";
    String _price = "100USD";
    String _description = "ojdnfisdgjuposmgds";

    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
            children: [
              Positioned(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width*0.7,
                  child: SvgPicture.asset(
                    "lib/assets/dummy.svg",
                    fit: BoxFit.cover,
                  ),
                  top: 0,
                  left: 0
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.width*0.7),
                        Form(
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width * 0.1),
                              child: Column(
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                      _name,
                                      style: Theme.of(context).textTheme.caption
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                      _price,
                                      style: Theme.of(context).textTheme.subtitle1
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                      _description,
                                      style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                  SizedBox(height: 10),
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
                                            color: Theme.of(context).primaryColor,
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(20.0))),
                                        padding: EdgeInsets.only(
                                            top: 16.0
                                        ),
                                        child: Text(
                                            "Buy",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.subtitle1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        )
                      ]
                  ),
              ),
            ]
        )
    );
  }
}