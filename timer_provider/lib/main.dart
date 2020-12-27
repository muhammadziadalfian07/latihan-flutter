import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_provider/custom_progres_bar.dart';
import 'package:timer_provider/time_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // untuk menyetop timer
  bool isStop = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Progress Bar"),
        ),
        body: ChangeNotifierProvider(
          builder: (context) => TimeState(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Consumer<TimeState>(
                  builder: (context, timeState, _) => CustomProgresBar(
                    width: 200,
                    value: timeState.time,
                    totalValue: 5,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Consumer<TimeState>(
                      builder: (context, timeState, _) => RaisedButton(
                        color: Colors.lightBlue[300],
                        child: Text(
                          "Start",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          isStop = false;
                          Timer.periodic(Duration(seconds: 1), (time) {
                            if (isStop) {
                              time.cancel();
                            } else {
                              if (timeState.time == 0)
                                time.cancel();
                              else
                                timeState.time -= 1;
                            }
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    RaisedButton(
                      child: Text(
                        "Stop",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.red[700],
                      onPressed: () {
                        isStop = true;
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
