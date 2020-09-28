import 'dart:async';

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  List<String> images = [
    'img1.jpg',
    'img2.jpg',
    'img3.jpg',
    'img4.jpg',
    'img5.jpg',
    'img6.jpg',
    'img7.jpg',
    'img8.jpg',
    'img9.jpg',
    'img10.jpg'
  ];
  final String path = 'assets/images/';

  void initState() {
    super.initState();
  }

  String imageRotator() {
    Timer(Duration(seconds: 5), () {
      if (index < images.length - 1) {
        setState(() {
          index++;
        });
      } else
        setState(() {
          index = 0;
          Timer(Duration(seconds: 5), () {});
        });
    });
    final String image = path + images[index];
    return image;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
              child: Opacity(
            opacity: 0.7,
            child: Image.asset(
              imageRotator(),
              width: size.width - 30,
              height: size.height - 20,
              fit: BoxFit.cover,
            ),
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height - size.height / 1.6,
              ),
              Text(
                'Beatriz Severo Portfolio',
                style: TextStyle(color: Colors.black45, fontSize: 40),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: InkWell(
                  splashColor: Colors.amber,
                  onTap: () {
                    Navigator.pushNamed(context, '/homepage');
                  },
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      color: Colors.white,
                      child: Text(
                        'ENTRE NO SITE',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
