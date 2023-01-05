import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final VoidCallback restHandler;
  const Results(
      {super.key, required this.resultScore, required this.restHandler});

  String get resultsPharse {
    var resultsText = 'score';
    if (resultScore <= 40) {
      resultsText = 'You doing good';
    } else if (resultScore <= 50) {
      resultsText = 'You doing very good';
    } else if (resultScore <= 30) {
      resultsText = 'You doing Better';
    } else if (resultScore <= 20) {
      resultsText = 'You doing Better then best';
    } else {
      Text('you sick mf');
    }
    return resultsText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultsPharse,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
              onPressed: restHandler,
              child: Text(
                'Restart-Quiz',
              ))
        ],
      ),
    );
  }
}

    // String resultsText;
    // if (resultScore <= 30) {
    //   resultsText = 'You going good';
    // } else if (resultScore <= 40) {
    //   resultsText = 'You going nice';
    // } else if (resultScore <= 60) {
    //   resultsText = 'You going better';
    // } else if (resultScore <= 70) {
    //   resultsText = 'You going best';
    // } else {
    //   resultsText = 'You going bad';
    // }
    // return resultsText;