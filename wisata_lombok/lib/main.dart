import 'package:flutter/material.dart';
import 'package:wisata_lombok/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Lombok',
      theme: ThemeData.dark(),
      home: MainScreen(),
    );
  }
}
