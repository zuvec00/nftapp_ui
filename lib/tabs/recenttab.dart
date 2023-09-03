import 'package:flutter/material.dart';

import 'package:nikeshop_ui/components/nftcard.dart';

class RecentTab extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller:PageController(),
      children: [
        NftCard('lib/images/apiens_3.png'),
        NftCard('lib/images/apiens_2.png'),
        NftCard('lib/images/apiens_1.png'),
        
      ],
    );
  }
}