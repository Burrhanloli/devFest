import 'package:dev_fest_app/home/home_screen.dart';
import 'package:dev_fest_app/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

import 'index.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    var _homeBloc = HomeBloc();
    return DevScaffold(
      title: "Home",
      body: HomeScreen(
        homeBloc: _homeBloc,
      ),
    );
  }
}
