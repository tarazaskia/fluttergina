  import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttergina/screens/colors.dart';
import 'package:fluttergina/screens/tes.dart';
import 'package:fluttergina/widget/detailpet.dart';

class PetSatu extends StatelessWidget {
  const PetSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: wcolor,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: bcolor,
                        size: 30,
                      ),
                      Text(
                        "PET",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: bcolor,
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: bcolor,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  DetailPet(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Daegal ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: bcolor,
                              ),
                            ),
                            Text(
                              "Rp.1500.000",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: bcolor,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(
                          "Bichon Maltese",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: bcolor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        " Year \n    1  ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: bcolor,
                        ),
                      ),
                      Text(
                        " Gender \n Female",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: bcolor,
                        ),
                      ),
                      Text(
                        "Height \n  1  kg ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: bcolor,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Text(
                          "Deskripsi",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: bcolor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Text(
                          "Maltese adalah anjing kecil yang cocok untuk dijadikan sahabat. Bulunya yang putih berkilau menjuntai ke bawah. Moncongnya agak sedikit meruncing dan harus sepertiga dari panjang kepala. Tubuhnya harus sedikit lebih panjang daripada tinggi badannya dengan tulang belakang yang seimbang.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: bcolor,
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Chat",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: pcolor,
                              ),
                            ),
                            Text(
                              "Report",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: pcolor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
