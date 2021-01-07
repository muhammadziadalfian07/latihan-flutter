import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.srirachaTextTheme().copyWith(
          bodyText1: GoogleFonts.modak(),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color fontColor = const Color(0xffffb401);
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Fonts"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Muhamamd Ziad Alfian",
              style: GoogleFonts.sriracha(color: fontColor, fontSize: 25),
            ),
            Text(
              "Ziad Alfian",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: fontColor, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
