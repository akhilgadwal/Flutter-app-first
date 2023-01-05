import 'package:flutter/material.dart';

class Mywidets extends StatefulWidget {
  const Mywidets({super.key});

  @override
  State<Mywidets> createState() => _MywidetsState();
}

class _MywidetsState extends State<Mywidets> {
  String _mainText = 'Main Text for the screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HEllo',
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _mainText,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _mainText = 'Changed the Text';
                });
              },
              child: Text(
                'Tap',
              ))
        ],
      ),
    );
  }
}
