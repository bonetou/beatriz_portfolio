import 'package:flutter/material.dart';
import 'package:flutter_project/components/custom_app_bar.dart';
import 'package:flutter_project/components/custom_gridview.dart';
import 'package:flutter_project/pages/about.dart';
import 'package:flutter_project/pages/contact.dart';

import 'homepage.dart';

class Projects extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => MainPage(),
        '/projects': (context) => Projects(),
        '/about': (context) => About(),
        '/contact': (context) => Contact(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          child: MyAppBar(),
          preferredSize: Size.fromHeight(100),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return CustomGridView(myCrossAxisCount: 2);
          } else {
            return CustomGridView(myCrossAxisCount: 3);
          }
        }),
      ),
    );
  }
}
