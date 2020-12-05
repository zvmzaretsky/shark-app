import 'package:fish_app/screens/login.dart';
import 'package:fish_app/utils/role.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatefulWidget {
  static const String route = "/search";

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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

    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];

    return Scaffold(
      body: SingleChildScrollView(
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 400,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text('Entry ${entries[index]}')),
              );
            }
        ),
      ),
    );
  }
}