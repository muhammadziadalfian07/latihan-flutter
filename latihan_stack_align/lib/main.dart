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
          title: Text("Latihan Stack Dan Align"),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah text yang berada di lapisan tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah text yang berada di lapisan tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah text yang berada di lapisan tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah text yang berada di lapisan tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah text yang berada di lapisan tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah text yang berada di lapisan tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah text yang berada di lapisan tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah text yang berada di lapisan tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment(0, 0.90),
              child: RaisedButton(
                child: Text("My Button"),
                color: Colors.amber,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
