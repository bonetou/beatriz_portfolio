
import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String buttonName;

  final Color buttonColor = Colors.black54;
  final double buttonSize = 15;
  final double containerHeigth = 40;

  const TabButton({this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeigth,
      alignment: Alignment.center,
      child: Text(buttonName,
          style: TextStyle(color: buttonColor, fontSize: buttonSize)),
    );
  }
}
