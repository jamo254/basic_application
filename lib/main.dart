import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

//_Private class can only be used in this file
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  //Setting the state
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });

    print('Answer chosen');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite language?",
      "What country do you come from?",
      "What programming language do you know?"
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            children: [
              Question(
                
                questions[_questionIndex],
              ),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
            ],
          )),
    );
  }
}
