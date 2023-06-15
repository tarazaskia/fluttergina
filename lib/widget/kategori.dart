import 'package:flutter/material.dart';
import 'package:fluttergina/screens/colors.dart';
import 'package:fluttergina/widget/Insightpet.dart';
import 'package:fluttergina/widget/latest.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:fluttergina/screens/shop.dart';

class Kategori extends StatelessWidget {
  const Kategori({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for(int i=1; i<8; i++)
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            color: Color.fromARGB(179, 189, 204, 216),borderRadius: BorderRadius.circular(5),
            
          ),
          child: Text("      All      ",
          style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15,
          color: bcolor),),
        )
      ],),
    );
  }
}