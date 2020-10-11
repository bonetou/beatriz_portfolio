import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_project/components/maingpage_button.dart';
import 'package:flutter_project/components/mainpage_background.dart';
import 'package:flutter_project/components/mainpage_title.dart';
import 'package:flutter_project/pages/projects.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final String bgImgName = '3.jpg';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Rajdhani'),
      routes: {
        '/projects': (context) => Projects(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
      ),
    );
  }
}
