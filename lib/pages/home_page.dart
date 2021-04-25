import 'package:flutter/material.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future _openDetails() async{
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context) {
          return new DetailPage(input: "Go home");
        }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(

          onPressed: () {
            _openDetails();
          },
          child: Text('Details'),
        )
        ),
      );
  }
}
