import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  Result(this.score);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(score.toString(),
            style: TextStyle(color: Colors.white, fontSize: 28.0)),
      ),
    );
  }
}
