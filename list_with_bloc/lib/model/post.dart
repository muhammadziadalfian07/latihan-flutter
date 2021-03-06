import 'dart:convert';
import 'package:http/http.dart' as http;

class Post {
  String id;
  String title;
  String body;

  Post({this.id, this.title, this.body});

  factory Post.createpost(Map<String, dynamic> object) {
    return Post(
      id: object["id"],
      title: object["title"],
      body: object["body"],
    );
  }

  // Fungsi konekek ke API
  static Future<List<Post>> connectToAPI(int start, int limit) async {
    String apiURL = "https://jsonplaceholder.typicode.com/posts?_start=" +
        start.toString() +
        "&_limit=" +
        limit.toString();

    var apiResult = await http.get(apiURL);
    var jsonObject = jsonDecode(apiResult.body) as List;
    return jsonObject
        .map<Post>(
          (item) => Post(
            id: item["id"].toString(),
            title: item["title"],
            body: item["body"],
          ),
        )
        .toList();
  }
}
