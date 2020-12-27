import 'package:bloc_latihan/ColorBloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc block = new ColorBloc();
  @override
  void dispose() {
    block.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                block.eventSink.add(ColorEvent.to_amber);
              },
              backgroundColor: Colors.amber,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                block.eventSink.add(ColorEvent.toLightBlue);
              },
              backgroundColor: Colors.lightBlue,
            ),
          ],
        ),
        appBar: AppBar(
          title: Text("Block (Bu ssiness Logic Component)"),
        ),
        body: Center(
          child: StreamBuilder(
            stream: block.stateStream,
            initialData: Colors.amber,
            builder: (context, snapShot) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: 100,
                width: 100,
                color: snapShot.data,
              );
            },
          ),
        ),
      ),
    );
  }
}
