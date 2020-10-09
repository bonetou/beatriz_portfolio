import 'package:flutter/material.dart';
import 'package:flutter_project/components/custom_gridview.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return CustomGridView(myCrossAxisCount: 2);
      } else {
        return CustomGridView(myCrossAxisCount: 3);
      }
    });
  }
}
