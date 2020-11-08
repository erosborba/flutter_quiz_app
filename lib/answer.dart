import 'package:flutter/material.dart';
import 'constanst.dart';

class Answer extends StatelessWidget {
  final Function questionIndex;
  final String answerText;
  Answer(this.questionIndex, this.answerText);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: questionIndex,
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Color(0XF212121),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
        ),
        // width: MediaQuery.of(context).size.width / 2,
        // height: MediaQuery.of(context).size.height / 8,
        // margin: EdgeInsets.all(5),
        // decoration: kBoxDecoration,
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 8,
          margin: EdgeInsets.all(5),
          decoration: kBoxDecoration,
          child: Center(
            child: Text(
              answerText,
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
          ),
        ),
      ),
    );
  }
}
