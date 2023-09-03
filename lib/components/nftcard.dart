import 'package:flutter/material.dart';

class NftCard extends StatelessWidget {
  final String imagePath;
  NftCard( this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(imagePath,fit:BoxFit.cover)
        ),
    );
  }
}