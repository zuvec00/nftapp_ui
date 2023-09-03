import 'package:flutter/material.dart';
import 'package:nikeshop_ui/components/nftcard.dart';

class TopTab extends StatelessWidget {
  @override
 final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          NftCard('lib/images/pinpop.jpg'),
          NftCard('lib/images/astronaut final-8.png'),
          
        ]);
  }
}
