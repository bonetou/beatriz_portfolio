import 'package:flutter/material.dart';
import 'package:flutter_project/components/homepage_app_bar.dart';
import 'package:flutter_project/pages/about.dart';
import 'package:flutter_project/pages/contact.dart';
import 'package:flutter_project/pages/home.dart';
import 'package:flutter_project/pages/projects.dart';

class HomepageDefaultController extends StatelessWidget {
  final List<String> myTabNames = [
    'INÍCIO',
    'SOBRE MIM',
    'PROJETOS',
    'CONTATO'
  ];
  final String myTitle = 'BEATRIZ SEVERO';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabNames.length,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: HomepageAppBar(title: myTitle, tabNames: myTabNames)),
        body: TabBarView(
          children: <Widget>[Home(), About(), Projects(), Contact()],
        ),
      ),
    );
  }
}
