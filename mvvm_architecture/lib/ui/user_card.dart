import 'package:flutter/material.dart';
import 'package:mvvm_architecture/model/user.dart';

class UserCrad extends StatelessWidget {
  final User user;
  UserCrad(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            offset: Offset(1, 1),
            blurRadius: 7,
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blueGrey),
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(user.avatar),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("id        : " + user.id.toString()),
              Text("Nama : " + user.firstName + " " + user.lastName),
              Text("Email  : " + user.email),
            ],
          )
        ],
      ),
    );
  }
}
