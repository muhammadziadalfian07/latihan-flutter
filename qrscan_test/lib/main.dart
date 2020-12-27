import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

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

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = "Hasil QR Scan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR scan test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              child: Text("Scan"),
              onPressed: () async {
                text = await scanner.scan();
                setState(() {});
              },
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Contoh 1 (Tanpa apapun)",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Contoh 2 (Small Caps)",
              style: TextStyle(
                  fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "1 /2 Contoh 3 (Small Caps & Frac)",
              style: TextStyle(fontSize: 20, fontFeatures: [
                FontFeature.enable('smcp'),
                FontFeature.enable('frac')
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "1 /2 Contoh 3 (Small Caps & Frac)",
              style: TextStyle(fontSize: 20, fontFeatures: [
                FontFeature.enable('smcp'),
                FontFeature.enable('frac')
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "1 /2 Contoh 3 (Small Caps & Frac)",
              style: TextStyle(fontSize: 20, fontFeatures: [
                FontFeature.enable('smcp'),
                FontFeature.enable('frac')
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
