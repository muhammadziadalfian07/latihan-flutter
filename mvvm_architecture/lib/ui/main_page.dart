import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_architecture/bloc/user_bloc.dart';
import 'package:mvvm_architecture/model/user.dart';
import 'package:mvvm_architecture/ui/user_card.dart';

class Mainpage extends StatelessWidget {
  final Random r = Random();
  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Demo MVVM"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Pick Random User"),
            onPressed: () {
              bloc.dispatch(r.nextInt(10) + 1);
            },
          ),
          BlocBuilder<UserBloc, User>(
            builder: (context, user) =>
                (user is UnitializedUser) ? Container() : UserCrad(user),
          ),
        ],
      ),
    );
  }
}
