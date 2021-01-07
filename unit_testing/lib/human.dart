import 'package:equatable/equatable.dart';

class Human extends Equatable {
  final int id;
  final String name;
  final int age;

  Human({this.id, this.name, this.age});

  factory Human.fromJson(Map<String, dynamic> json) {
    return Human(
      id: json["id"],
      name: json["name"],
      age: json["age"],
    );
  }

  // akan membandingkan ini
  @override
  List<Object> get props => [id, name, age];
}
