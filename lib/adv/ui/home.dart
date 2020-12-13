// import 'package:database_sqf/pinText/pintext.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => PinPutTest()),
            // );
          },
          child: new Text(
            "Database",
            style: TextStyle(color: Colors.white),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GestureDetector(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => PinPutTest()),
          // );
        },
        child: new Text(
          "Database",
          style: TextStyle(color: Colors.white),
        ),
      ),

      // NoTodo()
    );
  }
}
