import 'package:flutter/material.dart';
import 'package:flutter_project/components/tab_button.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> tabNames;
  const CustomTabBar({this.tabNames});

  List<TabButton> construcTabs(List<String> tabNames) {
    List<TabButton> tabButtons = [];
    tabNames.forEach((tabName) {
      tabButtons.add(TabButton(buttonName: tabName));
    });
    return tabButtons;
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Colors.black,
      unselectedLabelColor: Colors.white,
      labelPadding: EdgeInsets.all(1),
      tabs: construcTabs(tabNames),
    );
  }
}
