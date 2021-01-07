import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:smantic_widget/human.dart';
import 'package:http/http.dart' as http;

class HumanServices {
  static Future<Human> getHumanById(String id, http.Client client) async {
    String url = ".../human/" + id;

    var response = await client.get(url);
    if (response.statusCode != 200) {
      throw Exception("Error");
    }
    var result = json.decode(response.body);

    return Human.fromJson(result);
  }
}
