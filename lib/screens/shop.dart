import 'package:flutter/material.dart';
import 'package:fluttergina/screens/colors.dart';
import 'package:fluttergina/widget/Insightpet.dart';
import 'package:fluttergina/widget/item.dart';
import 'package:fluttergina/widget/latest.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:fluttergina/widget/kategori.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
       Container(color: wcolor,
       padding: EdgeInsets.only(top:30),
       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
       children: [ Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [Icon(
                                Icons.arrow_back,
                                color: bcolor,
                                size: 30,
                              ),
                              Icon(
                                Icons.sort,
                                color: bcolor,
                                size: 30,
                              ),
                              
                      ],
                       ),
                       SizedBox(height: 10,),
                        Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical:20,
            horizontal: 5,),
            child: Text("Adopt",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: bcolor
            ),),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical:5,
            horizontal: 10,),
            child: Text("Find The best Pet",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: bcolor
            ),),
            
          ),
          SizedBox(height: 15,),
            
                       Container(
                        height: 1000,
                        padding: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color:wcolor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(35,
                          ),topRight: Radius.circular(35)),

                        ),
                        child: Column(children: [Container(
                          padding: EdgeInsets.only(top:15),
        decoration: BoxDecoration(
          color: wcolor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(35),
          topRight: Radius.circular(35)),

        ),
        child:Column(children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal:15),
            padding: EdgeInsets.symmetric(horizontal: 15) ,
            height: 50,
            decoration:BoxDecoration(color:Color.fromARGB(179, 189, 204, 216),
            borderRadius: BorderRadius.circular(30)),
            child: Row(children: [Container(
              margin: EdgeInsets.only(left:5 ),
              height: 50,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(border: InputBorder.none,
                hintText: "Cari Disini..."),
              ),
              
            ),
            Spacer(),
             Icon(Icons.search_rounded,
             color: bcolor,
             size: 27,)
            ],),
          ),
         SizedBox(height: 20,),
          Kategori(),
          SizedBox(height: 20,),
            Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical:5,
            horizontal: 10,),
            child: Text("Nearest Place",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: bcolor
            ),),
            
          ),
          SizedBox(height: 20,),
          Item(),
          SizedBox(height: 20,),
           Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical:5,
            horizontal: 10,),
            child: Text("Cat",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: bcolor
            ),),
            
          ),
          Item()
           

        ],) ,
                        )],),
                       )
                        ],),

      ),
       
      ]),
    ),
   
    ],),);
  }
}