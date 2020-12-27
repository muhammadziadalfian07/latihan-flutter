import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'time_state.dart';

class CustomProgresBar extends StatelessWidget {
  final double width;
  final int value;
  final int totalValue;

  /// Membutuhkan parameter width
  CustomProgresBar({this.width, this.value, this.totalValue});

  @override
  Widget build(BuildContext context) {
    // [ratio] total perbanidngan anatara value dan total value
    final double ratio = value / totalValue;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.timer,
          color: Colors.grey[700],
        ),
        SizedBox(
          width: 10,
        ),
        Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              elevation: 3,
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: width * ratio,
                height: 10,
                decoration: BoxDecoration(
                  color: (ratio < 0.3)
                      ? Colors.red
                      : (ratio < 0.6)
                          ? Colors.amber[400]
                          : Colors.lightGreen,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
