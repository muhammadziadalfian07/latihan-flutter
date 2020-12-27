import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  String id;
  String name;

  User({this.id, this.name});

  factory User.craetetUser(Map<String, dynamic> jsonObject) {
    return User(
      id: jsonObject['id'].toString(),
      name: jsonObject['first_name'] + " " + jsonObject['last_name'],
    );
  }

  static Future<User> connectToApi(String id) async {
    // url API
    String urlAPI = "https://reqres.in/api/users/" + id;

    // panggil http request
    var apiResult = await http.get(urlAPI);

    // untuk mendapatkan bentuk json dari apiResult gunkan decode
    var jsonObject = json.decode(apiResult.body);

    // ambil nilai dari key yang bernama data
    var userdata = (jsonObject as Map<String, dynamic>)['data'];

    return User.craetetUser(userdata);
  }
}
