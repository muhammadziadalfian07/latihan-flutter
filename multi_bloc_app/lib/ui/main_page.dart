import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc_app/bloc/color_bloc.dart';
import 'package:multi_bloc_app/bloc/counter_bloc.dart';
import 'package:multi_bloc_app/ui/darft_page.dart';
import 'package:multi_bloc_app/ui/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              BlocBuilder<CounterBloc, int>(
                builder: (context, number) => Text(
                  number.toString(),
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                color: color,
                child: Text(
                  "Click Me To Change",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                shape: StadiumBorder(),
              ),
              DropDown(),
            ],
          ),
        ),
      ),
    );
  }
}

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  // ini untuk mencatat yang di pilih yang mana
  Person selectedPerson;
  // List Person
  List<Person> persons = [
    Person("Ziad"),
    Person("Puput"),
    Person("wawan"),
  ];

  List<DropdownMenuItem> generateItem(List<Person> person) {
    List<DropdownMenuItem> items = [];
    for (var item in persons) {
      items.add(
        DropdownMenuItem(
          child: Text(item.name),
          value: item,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          child: DropdownButton(
            isExpanded: true,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
            value: selectedPerson,
            items: generateItem(persons),
            onChanged: (item) {
              setState(() {
                selectedPerson = item;
              });
            },
          ),
        ),
        Text(
            (selectedPerson != null) ? selectedPerson.name : "Belum Ada Data!"),
      ],
    );
  }
}

class Person {
  String name;
  Person(this.name);
}
