import 'package:flutter/material.dart';
import 'package:fluttergina/screens/colors.dart';
import 'package:fluttergina/repository.dart';
import 'package:fluttergina/model.dart';

import 'package:fluttergina/screens/petsatu_screen.dart';
import 'package:fluttergina/widget/Insightpet.dart';
import 'package:fluttergina/widget/latest.dart';
import 'package:fluttergina/screens/shop.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List catNames = [
    "Shop",
    "Adoption",
    "Vactination",
    "Treatment",
  ];

  List<Icon> catIcons = [
    Icon(MdiIcons.home, color: pcolor, size: 30),
    Icon(MdiIcons.cat, color: pcolor, size: 30),
    Icon(MdiIcons.needle, color: pcolor, size: 30),
    Icon(MdiIcons.spa, color: pcolor, size: 30),
  ];

  List<Adopted> listBlog = [];

  Repository repository = Repository();

  getData() async {
    listBlog = await repository.getData();
    setState(() {});
    print(listBlog.length);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Material(
      color: wcolor,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    mcolor.withOpacity(0.30),
                    pcolor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("images/proff.png"),
                            ),
                            Icon(
                              Icons.search,
                              color: bcolor,
                              size: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      "gina Shaf \n",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: bcolor.withOpacity(0.7)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      "Good Morning! \n",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: wcolor.withOpacity(0.7)),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: catNames.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Stack(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Shop()));
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 30),
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: wcolor,
                                        shape: BoxShape.rectangle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: ccolor,
                                            blurRadius: 0,
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                      child: Center(child: catIcons[index]),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              catNames[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: bcolor.withOpacity(0.7),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Insight For You",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: bcolor),
                    ),
                  ),
                  SizedBox(height: 30),
                  InsightPet(),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Latest Adoption",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: bcolor),
                    ),
                  ),
                  SizedBox(height: 15),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 300,
                    ),
                    itemBuilder: (context, index) {
                      return Latest(
                        name: listBlog[index].name,
                        jeniskelamin: listBlog[index].jeniskelamin,
                        umur: listBlog[index].umur,
                        gambar: listBlog[index].gambar,
                      );
                    },
                    itemCount: listBlog.length,
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
