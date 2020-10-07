import 'package:flutter/material.dart';
import 'package:flutter_project/components/homepage_default_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String myTitle = 'BEATRIZ SEVERO';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(fontFamily: 'Rajdhani'),
      debugShowCheckedModeBanner: false,
      home: HomepageDefaultController(),
    );
  }
}
