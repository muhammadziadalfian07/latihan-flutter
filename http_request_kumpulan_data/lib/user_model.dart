import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String id;
  String name;

  User({this.id, this.name});

  factory User.createUsers(Map<String, dynamic> objectJson) {
    return User(
      id: objectJson['id'].toString(),
      name: objectJson['first_name'] + " " + objectJson['last_name'],
    );
  }

  static Future<List<User>> getUsers(String page) async {
    String apiUrl = "https://reqres.in/api/users?page=" + page;

    var apiResult = await http.get(apiUrl);

    var jsonObject = json.decode(apiResult.body);

    // ambil data dari obje yang kry nya data
    List<dynamic> listUsers = (jsonObject as Map<String, dynamic>)['data'];

    List<User> users = [];
    for (var i = 0; i < listUsers.length; i++)
      users.add(User.createUsers(listUsers[i]));

    return users;
  }
}
