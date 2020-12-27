import 'package:flutter/material.dart';
import 'package:http_request/post_result_model.dart';
import 'package:http_request/user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult;
  User user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult != null)
                  ? postResult.id +
                      " | " +
                      postResult.name +
                      " | " +
                      postResult.job +
                      " | " +
                      postResult.created
                  : "Tidak ada data!"),
              // Text(
              //   (user != null)
              //       ? user.id + " | " + user.name
              //       : "Tidak ada data users!",
              // ),
              RaisedButton(
                child: Text("GET"),
                onPressed: () {
                  // User.connectToApi("7").then((value) => {user = value});
                  // setState(() {});
                  PostResult.connectToAPI("ZIAD", "PROGRAMMER")
                      .then((value) => {postResult = value});
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
