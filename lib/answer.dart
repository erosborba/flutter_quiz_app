import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function questionIndex;
  final String answerText;
  Answer(this.questionIndex, this.answerText);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: questionIndex,
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 8,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color(0xFF2e2e2e),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [Color(0xFf1c1c1c), Color(0xFF383838)],
          ),
          boxShadow: [
            BoxShadow(
                color: Color(0xF1c1c1c),
                offset: Offset(5.0, 5.0),
                blurRadius: (10.0)),
            BoxShadow(
                color: Color(0XF404040),
                offset: Offset(-5.0, -5.0),
                blurRadius: (10.0))
          ],
        ),
        child: Center(
          child: Text(
            answerText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
