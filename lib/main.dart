import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import 'homepage.dart';

void main() {
  runApp(NftApp());
}

class NftApp extends StatelessWidget {
  
  Future<void> _selectHandler() async {
    Future refresh = await Future.delayed(Duration(seconds: 4));
    return refresh;
  }
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme:ThemeData(
      textTheme: TextTheme(bodyText2: GoogleFonts.bebasNeue(color:Colors.grey[300]))),
      
      home:LiquidPullToRefresh(
         onRefresh: _selectHandler,
          backgroundColor: Colors.grey[400],
          color: Colors.grey[800],
          height: 200,
          animSpeedFactor: 2,
          
        child: Homepage()
        ),

    );
  }
}