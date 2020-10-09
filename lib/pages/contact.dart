import 'dart:ui';

import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(100, 50, 100, 50),
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          height: 50,
          color: Colors.grey[200],
          child: Row(
            children: [
              Text(
                'email:',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
              SizedBox(width: 10),
              SelectableText(
                'beatrizsevero2098@gmail.com',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
