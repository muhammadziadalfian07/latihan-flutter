import 'package:flutter/material.dart';

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
  final int x = -5;
  final List<int> myList = [1, 3, 5, 6];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extension Demo"),
      ),
      body: Center(
        child: Text(
          myList.getMidElement().toString(),
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}

extension integerExtension on int {
  int negate() => -1 * this;
}

extension listExtension<T> on List {
  T getMidElement() =>
      (this.length == 0) ? null : this[(this.length / 2).floor()];
}
