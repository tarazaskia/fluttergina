import 'package:flutter/material.dart';
import 'package:fluttergina/screens/colors.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: wcolor,
      padding: EdgeInsets.only(top:25),
      child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [Icon(Icons.sort, 
        color: bcolor,
                  size: 30,
        ),Padding(padding: EdgeInsets.only(left: 20),
       child: Text(
                        "Shop \n",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: bcolor.withOpacity(0.7)),
                      ),)],) 
        
      ]), );;
  }
}