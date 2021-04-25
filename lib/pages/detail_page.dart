import 'package:flutter/material.dart';

import 'home_page.dart';

class DetailPage extends StatefulWidget {
  static final String id = "detail_page";
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.pushNamed(context, HomePage.id);
          },
            child: Text("Back to home"),
        ),
      ),
    );
  }
}
