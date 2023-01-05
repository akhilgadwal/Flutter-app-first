import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextButton extends StatelessWidget {
  final String mainText;
  const TextButton({super.key, required this.mainText});

  @override
  Widget build(BuildContext context) {
    return Text(mainText);
  }
}
