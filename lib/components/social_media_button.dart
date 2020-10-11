import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

void newTab(url) {
  html.window.open(url, 'PlaceholderName');
}

class SocialMediaButton extends StatelessWidget {
  final String myLink;
  final String iconName;
  final double myHeight;
  final double myWidth;
  SocialMediaButton({this.myLink, this.iconName, this.myHeight, this.myWidth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => newTab(myLink),
      child: Container(
        child: Image.asset(
          'assets/icons/$iconName.png',
          height: myHeight,
          width: myWidth,
        ),
      ),
    );
  }
}
