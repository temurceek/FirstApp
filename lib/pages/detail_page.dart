import 'package:flutter/material.dart';

import 'home_page.dart';

class DetailPage extends StatefulWidget {

  final String input;
  DetailPage({this.input});

  static final String id = "detail_page";
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.input),
      ),
    );
  }
}
