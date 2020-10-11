import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainpageButton extends StatelessWidget {
  final String myText = 'ENTRE NO SITE';
  final double myOpacity = 0.5;
  final double myFontsize = 20;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        splashColor: Colors.amber,
        onTap: () {
          Navigator.pushNamed(context, '/projects');
        },
        child: Opacity(
          opacity: myOpacity,
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            color: Colors.white,
            child: Text(
              myText,
              style: TextStyle(
                fontSize: myFontsize,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
