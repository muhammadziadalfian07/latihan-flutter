import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ShaderMask(
            shaderCallback: (rectangele) {
              return LinearGradient(
                colors: [Colors.green, Colors.transparent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(
                Rect.fromLTRB(
                  0,
                  0,
                  rectangele.width,
                  rectangele.height,
                ),
              );
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              image: AssetImage("assets/ziad.jpg"),
              width: 300,
            ),
          ),
        ),
      ),
    );
  }
}
