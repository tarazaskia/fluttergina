import 'package:flutter/material.dart';
import 'package:fluttergina/model.dart';
import 'package:fluttergina/repository.dart';
import 'package:fluttergina/screens/colors.dart';
import 'package:fluttergina/screens/petsatu_screen.dart';
import '';

class Latest extends StatelessWidget {
  Latest({
    required this.name,
    required this.jeniskelamin,
    required this.umur,
    required this.gambar,
  });
  //Latest({super.key});

  String gambar;
  String jeniskelamin;
  String umur;
  String name;

  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 1000,
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: scolor,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PetSatu(),
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.network(
                            gambar,
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.all(8),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: bcolor.withOpacity(0.7)),
                                ),
                                Icon(
                                  Icons.favorite_border,
                                  color: bcolor,
                                  size: 30,
                                ),
                              ],
                            ),
                            Text(
                              umur,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: bcolor.withOpacity(0.7)),
                            ),
                            Text(
                              jeniskelamin,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: bcolor.withOpacity(0.7)),
                            )
                          ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
