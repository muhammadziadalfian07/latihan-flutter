import 'dart:math';

import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:widget_slider/ui/widgets/MovieBox.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double currentPageValue = 0;
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.6);

  // buat method init
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> urls = [
      "https://cdns.klimg.com/resized/476x/p/5-cm-film-indonesia.jpg",
      "https://i.pinimg.com/564x/a5/94/80/a59480943326f878f5b9aebadc174af2.jpg",
      "https://www.tagar.id/Asset/uploads/304635-taufiq:-lelaki-yang-menantang-badai-.jpeg"
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
        backgroundColor: Colors.black,
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: urls.length,
        itemBuilder: (context, index) {
          double difference = index - currentPageValue;
          if (difference < 0) {
            difference *= -1;
          }
          difference = min(1, difference);
          return Center(
            child: Parent(
              child: MovieBox(
                urls[index],
                scale: 1 - (difference * 0.3),
              ),
            ),
          );
        },
      ),
    );
  }
}
