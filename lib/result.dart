import 'package:flutter/material.dart';
import 'constanst.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;
  Result(this.score, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Text(
              score.toString(),
              style: TextStyle(color: Colors.white, fontSize: 28.0),
            ),
            Container(
              height: 100,
              decoration: kBoxDecoration,
              child: FlatButton(
                onPressed: resetQuiz,
                child: Text(
                  'Voltar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
