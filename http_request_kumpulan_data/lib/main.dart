import 'package:flutter/material.dart';
import 'package:http_request_kumpulan_data/user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "tidak ada data";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("API DEMO"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(output),
              RaisedButton(
                child: Text("GET USERS LIST"),
                onPressed: () {
                  User.getUsers("2").then(
                    (users) => {
                      output = "",
                      for (var i = 0; i < users.length; i++)
                        output = output + " [" + users[i].name + "]"
                    },
                  );
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
