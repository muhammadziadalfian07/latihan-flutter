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
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  color: Colors.black12,
                  padding: EdgeInsets.only(top: 40),
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        elevation: 10,
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.adb,
                                size: 20,
                              ),
                              padding: EdgeInsets.all(20),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.adb,
                                size: 20,
                              ),
                              padding: EdgeInsets.all(20),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.adb,
                                size: 20,
                              ),
                              padding: EdgeInsets.all(20),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.adb,
                                size: 20,
                              ),
                              padding: EdgeInsets.all(20),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.adb,
                                size: 20,
                              ),
                              padding: EdgeInsets.all(20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(300),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
