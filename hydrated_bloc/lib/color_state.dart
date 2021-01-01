import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

enum ColorEvent { to_amber, to_light_blue }

class ColorBloc extends HydratedBloc<ColorEvent, Color> {
  @override
  Color get initialState => super.initialState ?? Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    // Mengembalikan ke dalam stream
    yield (event == ColorEvent.to_amber) ? Colors.amber : Colors.lightBlue;
  }

  // from json ini kan di pakai ketika aplikasi kita di jalankan, akan mengeload data
  // data terakhir berupa json
  @override
  Color fromJson(Map<String, dynamic> json) {
    try {
      return Color(json['color'] as int);
    } catch (_) {
      return null;
    }
  }

  // ketika melakukan perubahan pada state kita maka akan menyimpan dalam bentuk json
  // maka akan memanggil metod to json
  @override
  Map<String, int> toJson(Color state) {
    try {
      return {'color': state.value};
    } catch (_) {
      return null;
    }
  }
}
