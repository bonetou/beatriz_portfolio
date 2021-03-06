import 'package:flutter/material.dart';
import 'package:flutter_project/components/contact_box.dart';
import 'package:flutter_project/components/custom_app_bar.dart';
import 'package:flutter_project/components/social_media.dart';
import 'package:flutter_project/pages/about.dart';
import 'package:flutter_project/pages/projects.dart';

import 'homepage.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Quicksand'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => MainPage(),
        '/projects': (context) => Projects(),
        '/about': (context) => About(),
        '/contact': (context) => Contact(),
      },
      home: Scaffold(
        appBar: PreferredSize(
          child: MyAppBar(),
          preferredSize: Size.fromHeight(100),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            final double myHeigth = 50;
            final double myWidth = 50;
            final double myFontsize = 20;
            final EdgeInsets myPadding = EdgeInsets.fromLTRB(10, 5, 10, 5);

            return ListView(
              padding: EdgeInsets.fromLTRB(100, 50, 100, 50),
              children: [
                ContactBox(
                  type: 'E-mail:',
                  typeText: 'beatrizsevero2098@gmail.com',
                  myFontsize: myFontsize,
                  myHeight: myHeigth,
                  myPadding: myPadding,
                ),
                SizedBox(height: 30),
                ContactBox(
                  type: 'Celular:',
                  typeText: '51-983498607',
                  myFontsize: myFontsize,
                  myHeight: myHeigth,
                  myPadding: myPadding,
                ),
                SizedBox(height: 30),
                SocialMedia(myHeigth: myHeigth, myWidth: myWidth),
              ],
            );
          } else {
            final double myHeigth = 30;
            final double myWidth = 30;
            final double myFontsize = 14;
            final EdgeInsets myPadding = EdgeInsets.fromLTRB(10, 5, 10, 5);
            return ListView(
              padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
              children: [
                ContactBox(
                  type: 'E-mail:',
                  typeText: 'beatrizsevero2098@gmail.com',
                  myFontsize: myFontsize,
                  myHeight: myHeigth,
                  myPadding: myPadding,
                ),
                SizedBox(height: 20),
                ContactBox(
                  type: 'Celular:',
                  typeText: '51-983498607',
                  myFontsize: myFontsize,
                  myHeight: myHeigth,
                  myPadding: myPadding,
                ),
                SizedBox(height: 30),
                SocialMedia(myHeigth: myHeigth, myWidth: myWidth),
              ],
            );
          }
        }),
      ),
    );
  }
}
