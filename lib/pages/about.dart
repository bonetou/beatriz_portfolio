import 'package:flutter/material.dart';
import 'package:flutter_project/components/about_page_container.dart';
import 'package:flutter_project/components/custom_app_bar.dart';
import 'package:flutter_project/pages/homepage.dart';

import 'contact.dart';
import 'projects.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Quicksand'),
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
          if (constraints.maxWidth > 600) {
            final EdgeInsets myPadding = EdgeInsets.fromLTRB(100, 20, 100, 20);
            final double imageHeigth = 150;
            final double imageWidth = 150;
            final double fontSizeText = 20;
            return AboutPageContainer(
              myPadding: myPadding,
              imageHeigth: imageHeigth,
              imageWidth: imageWidth,
              fontSizeText: fontSizeText,
            );
          } else {
            final EdgeInsets myPadding = EdgeInsets.fromLTRB(20, 5, 20, 5);
            final double imageHeigth = 120;
            final double imageWidth = 120;
            final double fontSizeText = 16;
            return AboutPageContainer(
              myPadding: myPadding,
              imageHeigth: imageHeigth,
              imageWidth: imageWidth,
              fontSizeText: fontSizeText,
            );
          }
        }),
      ),
    );
  }
}
