import 'package:doc_comment/user_prodile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final UserProfile profile = new UserProfile();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Doc Comment"),
          backgroundColor: Colors.red[900],
        ),
        body: Center(
          child: profile,
        ),
      ),
    );
  }
}
