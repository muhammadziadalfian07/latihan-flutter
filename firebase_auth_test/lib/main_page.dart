import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_test/auth_services.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final FirebaseUser firebaseUser;

  MainPage({this.firebaseUser});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Column(
        children: [
          Center(
            child: Text(firebaseUser.uid),
          ),
          RaisedButton(
            child: Text("Sign Out"),
            onPressed: () async {
              await AuthServices.signOut();
            },
          )
        ],
      ),
    );
  }
}
