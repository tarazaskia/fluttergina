import 'package:flutter/material.dart';
import 'package:fluttergina/screens/colors.dart';

class InsightPet extends StatelessWidget {
  const InsightPet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
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
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image.asset(
                                "images/ban${index + 1}.png",
                                height: 200,
                                width: 400,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}
