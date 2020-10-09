import 'package:flutter/material.dart';

class MainpageTitle extends StatelessWidget {
  final Color myColor = Colors.white;
  final double myFontsize = 60;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Beatriz Severo',
      style: TextStyle(
        color: myColor,
        fontSize: myFontsize,
      ),
      textAlign: TextAlign.center,
    );
  }
}
