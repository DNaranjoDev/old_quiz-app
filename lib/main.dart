import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion1() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print('THE CHOSEN ONE');
  }

  void answerQuestion2() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print('THE CHOSEN TWO');
  }

  void answerQuestion3() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print('THE CHOSEN THREE');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: answerQuestion1,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion2,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: answerQuestion3,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
