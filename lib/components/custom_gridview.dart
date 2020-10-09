import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final int myCrossAxisCount;
  CustomGridView({this.myCrossAxisCount});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: myCrossAxisCount,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: List.generate(
          12,
          (index) {
            index = index + 1;
            return InkWell(
              hoverColor: Colors.white12,
              splashColor: Colors.white12,
              focusColor: Colors.white12,
              highlightColor: Colors.white12,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                      contentPadding: EdgeInsets.all(0),
                      content: Container(
                        child: Image.asset(
                          'assets/images/img$index.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),
                );
              },
              child: Container(
                padding: EdgeInsets.all(5),
                child: Center(
                  child: Image.asset(
                    'assets/images/img$index.jpg',
                  ),
                ),
              ),
            );
          },
        ));
  }
}
