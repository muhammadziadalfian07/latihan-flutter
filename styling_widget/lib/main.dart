import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:styling_widget/custom_button.dart';
import 'package:styling_widget/styles/custom_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Txt("Division Example",
            style: CustomStyles.txtstye.clone()
              ..fontSize(18)
              ..textColor(Colors.grey)),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(CustomStyles.buttonStyle),
            SizedBox(
              height: 12,
            ),
            CustomButton(
              CustomStyles.buttonStyle.clone()
                ..background.color(Colors.green)
                ..border(all: 3, color: Colors.green[900]),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[800],
    );
  }
}
