import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_project/components/maingpage_button.dart';
import 'package:flutter_project/components/mainpage_background.dart';
import 'package:flutter_project/components/mainpage_title.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void initState() {
    super.initState();
  }

  final String bgImgName = 'img9.jpg';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          MainpageImageBackground(imgName: bgImgName),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height - size.height / 1.6),
              MainpageTitle(),
              SizedBox(height: 40),
              MainpageButton()
            ],
          ),
        ],
      ),
    );
  }
}
