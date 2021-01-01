import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc_app/bloc/color_bloc.dart';
import 'package:multi_bloc_app/bloc/counter_bloc.dart';
import 'package:multi_bloc_app/ui/darft_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              BlocBuilder<CounterBloc, int>(
                builder: (context, number) => GestureDetector(
                  onTap: () {
                    counterBloc.dispatch(number + 1);
                  },
                  child: Text(
                    number.toString(),
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              BlocBuilder<CounterBloc, int>(
                builder: (context, number) => RaisedButton(
                  onPressed: () {
                    counterBloc.dispatch(number = 0);
                  },
                  child: Text(
                    "Reset",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: color,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      colorBloc.dispatch(ColorEvent.toPink);
                    },
                    color: Colors.pink,
                    shape: (color == Colors.pink)
                        ? CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3))
                        : CircleBorder(),
                  ),
                  RaisedButton(
                    onPressed: () {
                      colorBloc.dispatch(ColorEvent.toAmber);
                    },
                    color: Colors.amber,
                    shape: (color == Colors.amber)
                        ? CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3))
                        : CircleBorder(),
                  ),
                  RaisedButton(
                    onPressed: () {
                      colorBloc.dispatch(ColorEvent.toPurpel);
                    },
                    color: Colors.purple,
                    shape: (color == Colors.purple)
                        ? CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3))
                        : CircleBorder(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
