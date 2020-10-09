import 'package:flutter/material.dart';

class TabTitle extends StatelessWidget {
  final String title;
  TabTitle({this.title});

  final Color customColor = Colors.black45;
  final double customFontsize = 30;
  final Color inkWellColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        splashColor: inkWellColor,
        hoverColor: inkWellColor,
        highlightColor: inkWellColor,
        onTap: () {},
        child: Text(
          title,
          style: TextStyle(
            color: customColor,
            fontSize: customFontsize,
          ),
        ),
      ),
    );
  }
}
