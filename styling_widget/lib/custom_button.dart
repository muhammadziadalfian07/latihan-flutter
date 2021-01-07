import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:styling_widget/styles/custom_styles.dart';
// import 'package:division/division.dart';

class CustomButton extends StatefulWidget {
  final ParentStyle buttonStyle;
  CustomButton(this.buttonStyle);

  @override
  CustomButtonState createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton> {
  bool isTapDown = false;

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        child: Txt(
          "Division",
          style: CustomStyles.txtstye,
        ),
      ),
      style: widget.buttonStyle.clone()
        ..scale((isTapDown) ? 1.1 : 1)
        ..elevation((isTapDown) ? 0 : 5),
      gesture: Gestures()
        ..onTapDown((detail) {
          setState(() {
            isTapDown = true;
            print(isTapDown);
          });
        })
        ..onTapUp((detail) {
          setState(() {
            isTapDown = false;
            print(isTapDown);
          });
        })
        ..onTapCancel(() {
          setState(() {
            isTapDown = false;
            print(isTapDown);
          });
        }),
    );
  }
}
