import 'dart:convert';
import 'package:fluttergina/model.dart';
import 'package:http/http.dart' as http;

class Repository {
  final _baseUrl = 'https://648976965fa58521caafa382.mockapi.io/lastadopted/';
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Adopted> blog = it.map((e) => Adopted.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
