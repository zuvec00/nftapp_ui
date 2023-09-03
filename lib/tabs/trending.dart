import 'package:flutter/material.dart';
import 'package:nikeshop_ui/components/nftcard.dart';

class TrendingTab extends StatelessWidget {

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller:_controller,
      children:[
        NftCard('lib/images/astronaut_G.jpg'),
        NftCard('lib/images/heart.jpg'),
        
        
      ]
    );
  }
}
