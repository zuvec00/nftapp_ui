import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  VoidCallback onTap;

  MyAppBar({required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Expanded(
            child:Text(
              title,
              style:TextStyle(fontSize:40),
              )),
              GestureDetector(
                onTap:onTap,
                child:Container(
                  padding:EdgeInsets.all(12),
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(12),
                    color:Colors.grey[800],
                    boxShadow:[
                      BoxShadow(
                        //cobs
                        color:Colors.grey.shade700,
                        offset:Offset(-3, -3),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                      //cobs
                      color: Colors.grey.shade900,
                      offset: Offset(3, 3),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    ]
                  ),
                  child: Icon(Icons.search_rounded,size: 30,color:Colors.grey[300])),
              )
      ]),
    );
  }
}