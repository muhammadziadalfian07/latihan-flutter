import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(110),
                bottomRight: Radius.circular(110),
              ),
            ),
            backgroundColor: Colors.pink[800],
            title: Text("Contoh Tab Bar"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabbar.preferredSize.height),
              child: Container(
                  child: myTabbar,
                  decoration: BoxDecoration(
                      color: Colors.purple[800],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ))),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              buildCenter("Comments"),
              buildCenter("Computer"),
            ],
          ),
        ),
      ),
    );
  }

  Center buildCenter(String data) {
    return Center(
      child: Text(data),
    );
  }

  TabBar myTabbar = TabBar(
    // indicatorColor: Colors.amber,
    indicator: BoxDecoration(
      color: Colors.purple[800],
      // borderRadius: BorderRadius.all(Radius.circular(1)),
      border: Border(
        bottom: BorderSide(color: Colors.amber, width: 5),
      ),
    ),
    tabs: <Widget>[
      Tab(
        icon: Icon(Icons.comment),
        text: "Comment",
      ),
      Tab(
        icon: Icon(Icons.computer),
        text: "Computer",
      ),
    ],
  );
}
