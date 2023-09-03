import 'package:flutter/material.dart';
import 'dart:ui';

class GlassBox extends StatelessWidget {
  final child;
  GlassBox({this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height:60,
        padding:EdgeInsets.all(2),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10,sigmaY:10),
          child:Container(
            alignment:Alignment.bottomCenter,
            child: child)
        ),
      ),
    );
  }
}