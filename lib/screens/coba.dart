import 'package:flutter/material.dart';

import '../model.dart';
import '../repository.dart';
import '../widget/latest.dart';

class coba extends StatefulWidget {
  const coba({super.key});

  @override
  State<coba> createState() => _cobaState();
}

class _cobaState extends State<coba> {
  List<Adopted> listBlog = [];
  Repository repository = Repository();

  getData() async {
    listBlog = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
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
    );
  }
}
