import 'package:flutter/material.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String data = "Details";
  Future _openDetails() async{
    Map results = await Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context) {
          return new DetailPage(
            input: "Flutter",
            age: 22,
          );
        }
    ));
    if(results != null && results.containsKey("name") && results.containsKey("age")){
      setState(() {
        data = results["name"] + " " + results["age"].toString();
      });
    } else {
      print("Nothing");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(

          onPressed: () {
            _openDetails();
          },


          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.black)
          ),
          child: Text(data,
            style: TextStyle(color: Colors.amberAccent),
          ),
        )
        ),
      );
  }
}
