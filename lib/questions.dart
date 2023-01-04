import 'package:flutter/cupertino.dart';

class Questions extends StatelessWidget {
  final String questions;
  const Questions({key, required this.questions});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questions,
        textAlign: TextAlign.center,
      ),
    );
  }
}
