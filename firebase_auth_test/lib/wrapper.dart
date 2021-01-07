import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_test/login_page.dart';
import 'package:firebase_auth_test/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Warapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
    return (firebaseUser == null)
        ? LoginPage()
        : MainPage(
            firebaseUser: firebaseUser,
          );
  }
}
