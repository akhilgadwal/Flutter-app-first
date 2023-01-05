import 'package:first_app/practice/text_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Myapp1 extends StatelessWidget {
  const Myapp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mywidets(),
    );
  }
}

// class Mywidets extends StatefulWidget {
//   const Mywidets({super.key});

//   @override
//   State<Mywidets> createState() => _MywidetsState();
// }

// class _MywidetsState extends State<Mywidets> {
//   String _mainText = 'Main Text for the screen';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'HEllo',
//         ),
//       ),
//       body: Column(
//         children: [
//           Center(
//             child: Text(
//               _mainText,
//             ),
//           ),
//           // ElevatedButton(
//           //     onPressed: () {
//           //       setState(() {
//           //         _mainText = 'This Changed';
//           //       });
//           //     },
//           //     child: Text('Change the text'))
//         ],
//       ),
//     );
//   }
// }
