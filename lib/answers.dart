import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selecthandler;
  final String answerText;
  const Answer(
      {super.key, required this.selecthandler, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selecthandler,
        child: Text(answerText),
      ),
    );
  }
}
