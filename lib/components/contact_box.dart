import 'package:flutter/material.dart';

class ContactBox extends StatelessWidget {
  final String type;
  final String typeText;
  final double myHeight;
  final double myFontsize;
  final EdgeInsets myPadding;

  ContactBox(
      {this.type,
      this.typeText,
      this.myFontsize,
      this.myPadding,
      this.myHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: myPadding,
      height: myHeight,
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            type,
            style: TextStyle(
              fontSize: myFontsize,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(width: 10),
          SelectableText(
            typeText,
            style: TextStyle(
              fontSize: myFontsize,
              color: Colors.black
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
