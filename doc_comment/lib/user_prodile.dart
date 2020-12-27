import 'dart:ui';

import 'package:flutter/material.dart';

///Clas UserProfile Digunakan untuk menampilkan user profile dengan indah
class UserProfile extends StatelessWidget {
  /// ini digunakan untuk menyimpan nama
  String name;
  String role;
  String urlPhoto;

  /// * [name] berisi *nama user*, default berisi `No Name`
  ///
  /// * [role] berisi **role user**, default berisi `No Role`
  ///
  /// * [urlPhoto] berisi foto user, default afatar `null`
  UserProfile({this.name = "No Name", this.role = "No Role", this.urlPhoto});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Container(
            child: Image(
              image: NetworkImage(
                  (urlPhoto != null)
                      ? urlPhoto
                      : "https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-black-7-512.png",
                  scale: 2.5),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "[ " + role + " ]",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
