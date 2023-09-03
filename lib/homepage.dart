import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

//files
import 'package:nikeshop_ui/components/appbar.dart';
import 'package:nikeshop_ui/tabs/recenttab.dart';
import 'package:nikeshop_ui/tabs/trending.dart';
import 'package:nikeshop_ui/tabs/top.dart';
import 'package:nikeshop_ui/tabs/tabbar.dart';
import 'package:nikeshop_ui/components/bottomnavbar.dart';
import 'package:nikeshop_ui/theme/glassbox.dart';



class Homepage extends StatefulWidget{

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List tabOptions =[
    ['Recent',RecentTab()],
    ['Trending',TrendingTab()],
    ['Top',TopTab()]
  ];
  int _currentbottomindex = 0;
  void _handlerindex (int? index){
    setState(() {
      _currentbottomindex = index!;
    }
    );
  }
  void _searchButtonTapped() {}
 



  Widget build(BuildContext context){
    return DefaultTabController(
      length:tabOptions.length,
      child: Scaffold(
        extendBody:true ,
        bottomNavigationBar: GlassBox(child: BottomNavBar(index:_currentbottomindex,onTap:_handlerindex)) ,
        backgroundColor: Colors.grey[800],
           body:ListView(
            
            children: [
            //A P P B A R
            MyAppBar(title:'Explore Collections',onTap:_searchButtonTapped),
    
            //T A B B A R
            SizedBox(height:600,
              child:MyTabBar(tabOptions)
              ),
    
            
            
    
    
           ],),
      ),
    );
  }
}