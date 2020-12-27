import 'package:flutter/material.dart';
import 'package:latihan_state_managemen/aplication_colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<AplicationColor>(
        builder: (context) => AplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<AplicationColor>(
              builder: (context, aplicationColor, _) => Text(
                "State Management Provider",
                style: TextStyle(
                  color: aplicationColor.color,
                ),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<AplicationColor>(
                  builder: (context, aplicationColor, _) => AnimatedContainer(
                    duration: Duration(microseconds: 500),
                    height: 100,
                    width: 100,
                    color: aplicationColor.color,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text("AB"),
                      padding: EdgeInsets.all(5),
                    ),
                    Consumer<AplicationColor>(
                      builder: (context, aplicationColor, _) => Switch(
                        value: aplicationColor.isLightBlue,
                        onChanged: (newValue) {
                          aplicationColor.isLightBlue = newValue;
                        },
                      ),
                    ),
                    Container(
                      child: Text("LB"),
                      padding: EdgeInsets.all(5),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
