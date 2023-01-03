import 'package:first_app/answers.dart';
import 'package:first_app/questions.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var questionsIndex = 0;

  //creating functions
  void getAnswer() {
    setState(() {
      questionsIndex = questionsIndex + 1;
    });
    print(questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionsText': 'What is your age ?',
        'answer': [
          '15',
          '25',
          '35',
          '45',
        ]
      },
      {
        'questionsText': 'What do you do ?',
        'answer': [
          'Student',
          'Job',
          'Business',
          'Un-employed',
        ],
      },
      {
        'questionsText': 'What is Flutter',
        'answer': [
          'Framework',
          'Language',
          'Complier',
        ],
      }
    ];

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'First app ',
            ),
          ),
          body: Column(children: [
            Questions(
              questions: questions[questionsIndex]['questionsText'] as String,
              // (questions[questionsIndex]['answer'] as List<String>)
              //     .map((answer) {
              //   return Answer(selecthandler: getAnswer, answerText: answer);
              // }).toList(),
            ),
            ...(questions[questionsIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(selecthandler: getAnswer, answerText: answer);
            }).toList()
          ]),

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
        ));
  }
}
