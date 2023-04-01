import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerText;
  final VoidCallback selectHandler;

  Answer(this.answerText, this.selectHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
