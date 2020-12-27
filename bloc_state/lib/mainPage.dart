import 'package:bloc_state/colorBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // printah untuk mengambil objek bloc Dari Rootnya
    // blocProvidernya juga menangani dispose
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () {
              bloc.dispatch(ColorEvent.to_amber);
            },
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.lightBlue,
            onPressed: () {
              bloc.dispatch(ColorEvent.to_lightBlue);
            },
          )
        ],
      ),
      appBar: AppBar(
        title: Text("Bloc Package"),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, color) => AnimatedContainer(
            width: 100,
            height: 100,
            color: color,
            duration: Duration(milliseconds: 500),
          ),
        ),
      ),
    );
  }
}
