import 'package:equatable/equatable.dart';

class Someone extends Equatable {
  final String name;
  final int age;

  Someone({this.name, this.age});

  @override
  List<Object> get props => [name, age];
}
