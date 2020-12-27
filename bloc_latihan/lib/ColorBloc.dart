import 'dart:async';
import 'package:flutter/material.dart';

// untuk membuat jenis jenis color event
enum ColorEvent { to_amber, toLightBlue }

class ColorBloc {
  // menyimpan state warna
  Color _color = Colors.amber;

  // membuat stream Controller (ColorEvent)
  StreamController<ColorEvent> _eventController =
      StreamController<ColorEvent>();
  // Membuat Getter
  StreamSink<ColorEvent> get eventSink =>
      _eventController.sink; // publi supaya di akses oleh si tombol

  // membuat stream Controller (State)
  StreamController<Color> _stateController = StreamController<Color>();
  // Membuat Getter
  StreamSink<Color> get _stateSink => _stateController
      .sink; // ini perivat karen adi akases melalu mapEventToState

  Stream<Color> get stateStream =>
      _stateController.stream; // ini public akan di kases oleh si containernya

  // method MapEventToState
  void _mapEventToState(ColorEvent colorEvent) {
    if (colorEvent == ColorEvent.to_amber)
      _color = Colors.amber;
    else
      _color = Colors.lightBlue;

    // masukan ke dalam kerannya si _stateSink
    _stateSink.add(_color);
  }

  // constructor untunk menghubungkan mapEventToState dengan _eventColor
  // di buang dari memori
  ColorBloc() {
    _eventController.stream.listen(_mapEventToState);
  }

  //  membereskan selang" tadi / sink
  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}
