import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionCount = 0;

  void changeQuestion() {
    setState(() {
      questionCount++;
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
            Text(questions[questionCount]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: changeQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: changeQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: changeQuestion,
            ),
            RaisedButton(
              child: Text("Answer 4"),
              onPressed: changeQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
