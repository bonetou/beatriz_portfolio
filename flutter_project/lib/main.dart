import 'package:flutter/material.dart';
import 'pages/mainpage.dart';
import 'pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beatriz Severo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(fontFamily: 'Rajdhani'),
      routes: {
        '/': (context) => MainPage(),
        '/homepage': (context) => HomePage(),
      },
    );
  }
}

