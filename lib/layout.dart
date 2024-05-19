// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:web/helpers/responsiveness.dart';
import 'package:web/widgets/large_screen.dart';
import 'package:web/widgets/small_screen.dart';
import 'package:web/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen(),),
    );
  }
}