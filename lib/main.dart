import 'package:first_app/practice/main.dart';
import 'package:first_app/quiz.dart';
import 'package:first_app/results.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatefulWidget {
  const Myapp({key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  final _questions = const [
    {
      'questionsText': 'What is your Income ?',
      'answer': [
        {'text': '15', 'score': 10},
        {'text': '25', 'score': 20},
        {'text': '35', 'score': 30},
        {'text': '45', 'score': 40},
      ]
    },
    {
      'questionsText': 'What do you do ?',
      'answer': [
        {'text': 'students', 'score': 10},
        {'text': 'un-employed', 'score': 5},
        {'text': 'job', 'score': 20},
        {'text': 'Business', 'score': 40},
      ],
    },
    {
      'questionsText': 'What is Flutter',
      'answer': [
        {'text': 'Frame-Work', 'score': 20},
        {'text': 'Ui-desigin', 'score': 10},
        {'text': 'SDK', 'score': 15},
      ],
    }
  ];
  var _questionsIndex = 0;
  var _totalScore = 0;

  void restartQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  //creating functions
  void _getAnswer(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });

    // print(questionsIndex);
    if (_questionsIndex < _questions.length) {
      print(
        'We do not have more question for you ',
      );
    } else {
      print(
        'No more question',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp1(),
      // home: Scaffold(
      //     appBar: AppBar(
      //       title: const Text(
      //         'First app ',
      //       ),
      //     ),
      //     body: _questionsIndex < _questions.length
      //         ? Quiz(
      //             questions: _questions,
      //             getAnswer: _getAnswer,
      //             questionsIndex: _questionsIndex)
      //         // Column(children: [
      //         //     Questions(
      //         //       questions:
      //         //           questions[questionsIndex]['questionsText'] as String,
      //         //     ),
      //         //     //Questions

      //         //     ...(questions[questionsIndex]['answer'] as List<String>)
      //         //         .map((answer) {
      //         //       return Answer(selecthandler: getAnswer, answerText: answer);
      //         //     }).toList()
      //         //   ])
      //         : Results(
      //             resultScore: _totalScore,
      //             restHandler: restartQuiz,
      //           )

      // ElevatedButton(
      //   style: ButtonStyle(
      //     backgroundColor: MaterialStateProperty.all(Colors.red),
      //   ),
      //   //creating ayn functions
      //   onPressed: () {
      //     print(
      //       'Answer 2 is chosen',
      //     );
      //   },
      //   child: const Text('Answer 2'),
      // ),
      // ElevatedButton(
      //   style: ButtonStyle(
      //     backgroundColor: MaterialStateProperty.all(Colors.red),
      //   ),
      //   onPressed: () {
      //     print(
      //       'Answer 3 is chosen',
      //     );
      //   },
      //   child: const Text('Answer 3'),
      // ),
    );
  }
}
