import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/components/tab_title.dart';
import 'custom_tab_bar.dart';

class HomepageAppBar extends StatelessWidget {
  final title;
  final tabNames;
  HomepageAppBar({this.title, this.tabNames});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white12,
        shadowColor: Colors.white12,
        title: TabTitle(title: title),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: CustomTabBar(tabNames: tabNames),
        ));
  }
}
