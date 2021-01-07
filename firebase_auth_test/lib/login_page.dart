import 'package:firebase_auth_test/auth_services.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 300,
              height: 50,
              child: TextField(
                controller: emailController,
              ),
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                controller: passwordController,
              ),
            ),
            RaisedButton(
              child: Text("SignIn Anonymus"),
              onPressed: () async {
                await AuthServices.signAnonymous();
              },
            ),
            RaisedButton(
              child: Text("SignUp"),
              onPressed: () async {
                await AuthServices.signUp(
                  emailController.text,
                  passwordController.text,
                );
              },
            ),
            RaisedButton(
              child: Text("SignIn"),
              onPressed: () async {
                await AuthServices.signIn(
                  emailController.text,
                  passwordController.text,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
