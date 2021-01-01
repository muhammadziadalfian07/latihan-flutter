import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> isSelected = [true, true, false];
  ColorFilter colorFilter = ColorFilter.mode(Colors.blue, BlendMode.screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorFiltered(
        colorFilter: colorFilter,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Widget Demo"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SelectableText(
                  "Ini adalah Selectable Text, Silahakan Tekan Saya",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  showCursor: true,
                  cursorColor: Colors.red,
                  cursorWidth: 3,
                ),
                ToggleButtons(
                  isSelected: isSelected,
                  children: <Widget>[
                    Icon(
                      Icons.access_alarm,
                    ),
                    Icon(
                      Icons.adb,
                    ),
                    Icon(
                      Icons.supervised_user_circle_sharp,
                    ),
                  ],
                  onPressed: (index) {
                    setState(() {
                      // Color Filter
                      if (index == 0)
                        colorFilter =
                            ColorFilter.mode(Colors.blue, BlendMode.screen);
                      else if (index == 1)
                        colorFilter =
                            ColorFilter.mode(Colors.green, BlendMode.softLight);
                      else
                        colorFilter =
                            ColorFilter.mode(Colors.purple, BlendMode.multiply);
                      // isSelected[index] = !isSelected[index]; ///Jika Ingin Bisa Di pilih Semua
                      for (var i = 0; i < isSelected.length; i++) {
                        ///Jika Ingin Hanya satu saja yang di pilih
                        isSelected[i] = (i == index) ? true : false;
                      }
                    });
                  },
                  fillColor: Colors.red[50],
                  selectedColor: Colors.red,
                  selectedBorderColor: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
