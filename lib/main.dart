import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionCount = 0;

  void _changeQuestion() {
    setState(() {
      _questionCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What is your name?', 'What is your favorite Color?'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Text(questions[_questionCount]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _changeQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _changeQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: _changeQuestion,
            ),
            RaisedButton(
              child: Text("Answer 4"),
              onPressed: _changeQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
