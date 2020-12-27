import 'dart:convert';

import 'package:http/http.dart' as http;

// class
class PostResult {
  String id;
  String name;
  String job;
  String created;

  // constructor
  PostResult({this.id, this.name, this.job, this.created});

  //factory method
  factory PostResult.cratedPostResult(Map<String, dynamic> object) {
    return PostResult(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt'],
    );
  }

  // method menghubungkan aplikasi ke API
  static Future<PostResult> connectToAPI(String name, String job) async {
    // url API
    String apiURL = "https://reqres.in/api/users";

    // panggil http request
    // method post memiliki body , nah body ini di ambil dari parameter
    var apiResult = await http.post(apiURL, body: {"name": name, "job": job});

    // untuk mendapatkan bentuk json dari apiResult gunkan decode
    var jsonObject = json.decode(apiResult.body);

    // kita butuh json object
    return PostResult.cratedPostResult(jsonObject);
  }
}
