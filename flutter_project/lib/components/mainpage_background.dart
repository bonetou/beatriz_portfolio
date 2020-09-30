import 'package:flutter/material.dart';

class MainpageImageBackground extends StatelessWidget {
  final String imgName;
  MainpageImageBackground({this.imgName});
  final String path = 'assets/images/';
  final double myOpacity = 0.7;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final imgWidth = size.width - 30;
    final imgHeigth = size.height - 20;

    return Center(
        child: Opacity(
      opacity: myOpacity,
      child: Image.asset(
        path + imgName,
        width: imgWidth,
        height: imgHeigth,
        fit: BoxFit.cover,
      ),
    ));
  }
}
