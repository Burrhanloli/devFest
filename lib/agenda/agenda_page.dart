import 'dart:math';

import 'package:dev_fest_app/agenda/session_list.dart';
import 'package:dev_fest_app/home/session.dart';
import 'package:dev_fest_app/universal/dev_scaffold.dart';
import 'package:dev_fest_app/utils/dev_fest.dart';
import 'package:dev_fest_app/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AgendaPage extends StatelessWidget {
  static const String routeName = "/agenda";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: DevScaffold(
        title: Devfest.agenda_text,
        tabBar: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Tools.multiColors[Random().nextInt(4)],
          isScrollable: false,
          labelStyle: TextStyle(fontSize: 12),
          tabs: <Widget>[
            Tab(
              child: Text("Cloud"),
              icon: Icon(
                FontAwesomeIcons.cloud,
                size: 12,
              ),
            ),
            Tab(
              child: Text("Mobile"),
              icon: Icon(
                FontAwesomeIcons.mobile,
                size: 12,
              ),
            ),
            Tab(
              child: Text("Web & More"),
              icon: Icon(
                FontAwesomeIcons.chrome,
                size: 12,
              ),
            )
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            SessionList(
              allSessions: sessions,
            ),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
