import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  bool isON = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("nama", controller.text);
    pref.setBool("isOn", isON);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("nama") ?? "NO";
  }

  Future<bool> getOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("isOn") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shared Prefernces Example"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                controller: controller,
              ),
              Switch(
                value: isON,
                onChanged: (newValue) {
                  setState(() {
                    isON = newValue;
                  });
                },
              ),
              RaisedButton(
                child: Text("Save"),
                onPressed: () {
                  saveData();
                },
              ),
              RaisedButton(
                child: Text("Load Data"),
                onPressed: () {
                  getNama().then((value) => {controller.text = value});
                  getOn().then((value) => {isON = value});
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
