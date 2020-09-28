import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          shadowColor: Colors.white12,
          title: Text(
            'BEATRIZ SEVERO',
            style:
                TextStyle(color: Colors.black45, fontWeight: FontWeight.normal),
          ),
          
        ),
        body: Center(child: Text('Teste')),
      ),
    );
  }
}
