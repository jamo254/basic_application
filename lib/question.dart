import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //Make the value immutable
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //the container takes the full width
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
        
      ),
    );
  }
}
