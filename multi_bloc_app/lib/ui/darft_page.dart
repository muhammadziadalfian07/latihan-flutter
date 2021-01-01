import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  // minta parameter
  final Color backgroundColor;
  final Widget body;

  // Constructor
  const DraftPage({this.backgroundColor = Colors.pink, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo MultiBLoc In MultiPage App"),
        backgroundColor: backgroundColor,
      ),
      body: body,
    );
  }
}
