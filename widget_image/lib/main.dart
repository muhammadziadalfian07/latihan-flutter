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
        appBar: AppBar(
          title: Text("Latihan Image Widget"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[400],
                ),
                child: Image(
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/90/a0/53/90a053d9eeb182511df10cb0efed9650.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[400],
                ),
                child: Image(
                  image: AssetImage("images/test.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
