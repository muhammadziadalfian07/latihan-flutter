import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { toPink, toAmber, toPurpel }

class ColorBloc extends Bloc<ColorEvent, Color> {
  @override
  Color get initialState => Colors.pink;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    yield (event == ColorEvent.toPink)
        ? Colors.pink
        : (event == ColorEvent.toAmber)
            ? Colors.amber
            : Colors.purple;
  }
}
