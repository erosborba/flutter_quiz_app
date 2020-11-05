import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constanst.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColorActive,
          title: Text("Quiz App"),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              RaisedButton(
                child: Text("Question One"),
                color: kSecondaryColorActive,
                textColor: kprimaryTextColor,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
