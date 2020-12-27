import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isON = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.red,
      border: Border.all(color: Colors.black, width: 3),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Switcher"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AnimatedSwitcher(
                child: myWidget,
                duration: Duration(
                  seconds: 1,
                ),
                transitionBuilder: (child, animation) => ScaleTransition(
                  child: child,
                  scale: animation,
                ),
              ),
              Switch(
                value: isON,
                onChanged: (newValue) {
                  isON = newValue;
                  setState(() {
                    if (isON)
                      // myWidget = SizedBox(
                      //   child: Center(
                      //     child: Text("IS ON"),
                      //   ),
                      //   height: 100,
                      //   width: 200,
                      // );
                      myWidget = Container(
                        key: ValueKey(1),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(color: Colors.black, width: 3),
                        ),
                      );
                    else
                      myWidget = Container(
                        key: ValueKey(2),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.black, width: 3),
                        ),
                      );
                  });
                },
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.red[300],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
