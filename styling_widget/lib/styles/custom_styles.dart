import 'package:division/division.dart';
import 'package:flutter/material.dart';

abstract class CustomStyles {
  static ParentStyle buttonStyle = ParentStyle(angleFormat: AngleFormat.degree)
    ..background.color(Colors.lightBlue[300])
    ..borderRadius(all: 60)
    ..border(all: 3, color: Colors.lightBlue[900])
    ..elevation(5)
    ..padding(left: 20, right: 20, bottom: 15, top: 15)
    ..rotate(-5)
    ..ripple(true, splashColor: Colors.amber);

  static TxtStyle txtstye = TxtStyle()
    ..fontSize(30)
    ..bold()
    ..textColor(Colors.white);
}
