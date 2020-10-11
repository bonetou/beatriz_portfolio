import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyAppBar extends StatefulWidget {
  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  Color fontColor1 = Colors.black45;
  Color fontColor2 = Colors.black45;
  Color fontColor3 = Colors.black45;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Rajdhani'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white12,
            title: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Center(
                    child: Text(
                  'BEATRIZ SEVERO',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 30,
                  ),
                )),
              ),
            ),
            bottom: PreferredSize(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          fontColor1 = Colors.black;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          fontColor1 = Colors.black45;
                        });
                      },
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/projects');
                        },
                        child: Text(
                          'PROJETOS',
                          style: TextStyle(color: fontColor1, fontSize: 16),
                        ),
                      ),
                    ),
                    MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          fontColor2 = Colors.black;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          fontColor2 = Colors.black45;
                        });
                      },
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/about');
                        },
                        child: Text(
                          'SOBRE MIM',
                          style: TextStyle(color: fontColor2, fontSize: 16),
                        ),
                      ),
                    ),
                    MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          fontColor3 = Colors.black;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          fontColor3 = Colors.black45;
                        });
                      },
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/contact');
                        },
                        child: Text(
                          'CONTATO',
                          style: TextStyle(color: fontColor3, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20)
              ]),
              preferredSize: Size.fromHeight(50),
            )),
      ),
    );
  }
}