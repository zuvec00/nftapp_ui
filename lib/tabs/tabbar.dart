import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabBar extends StatelessWidget {
  final List tabOptions;

  MyTabBar(this.tabOptions);

  @override
  Widget build(BuildContext context) {
    return Column( children: [
      TabBar(
          indicatorColor: Colors.grey[400],
          labelColor: Colors.grey[400],
          unselectedLabelColor: Colors.grey[900],
          unselectedLabelStyle: GoogleFonts.bebasNeue(fontSize: 16),
          labelStyle: GoogleFonts.bebasNeue(fontSize: 22),
          tabs: [
            Text(
              tabOptions[0][0],
            ),
            Text(
              tabOptions[1][0],
            ),
            Text(
              tabOptions[2][0],
            ),
          ]),
      Expanded(
        child: TabBarView(
          children: [
            tabOptions[0][1],
            tabOptions[1][1],
            tabOptions[2][1],
          ],
        ),
      ),
    ]);
  }
}
