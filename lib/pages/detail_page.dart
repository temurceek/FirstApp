import 'package:flutter/material.dart';

import 'home_page.dart';

class DetailPage extends StatefulWidget {

  final String input;
  final int age;
  DetailPage({this.input, this.age});

  static final String id = "detail_page";
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).pop({"name" : "Dart", "age" : 33});
          },

          child: Text(widget.input + " " + widget.age.toString()),
        ),

      ),

    );
  }
}
