// import 'package:firebase_auth_test/auth_services.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth_test/database_serives.dart';
// import 'package:firebase_auth_test/wrapper.dart';
import 'package:firebase_auth_test/auth_services.dart';
import 'package:firebase_auth_test/database_serives.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cloud Firebase Storage"),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                (imagePath != null)
                    ? Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                      ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  child: Text("Pick Image"),
                  onPressed: () async {
                    File file = await getImage();
                    imagePath = await DatabaseServices.uploadImage(file);

                    setState(() {});
                  },
                ),
                RaisedButton(
                  child: Text("SIgnIN"),
                  onPressed: () async {
                    AuthServices.signAnonymous();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// pickImage
Future<File> getImage() async {
  // ignore: deprecated_member_use
  return await ImagePicker.pickImage(source: ImageSource.gallery);
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return StreamProvider.value(
//     //   // akan di pantau terus menerus
//     //   value: AuthServices.firebaseUserStream,
//     //   child: MaterialApp(
//     //     debugShowCheckedModeBanner: false,
//     //     home: Warapper(),
//     //   ),
//     // );
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Cloud Firestore"),
//         ),
//         body: Container(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 RaisedButton(
//                   child: Text("add Data"),
//                   onPressed: () {
//                     DatabaseServices.createOrUpdateProduct("1",
//                         name: "Masker", price: 10000000);
//                   },
//                 ),
//                 RaisedButton(
//                   child: Text("edit Data"),
//                   onPressed: () {
//                     DatabaseServices.createOrUpdateProduct("1",
//                         name: "Masker", price: 200000);
//                   },
//                 ),
//                 RaisedButton(
//                   child: Text("get Data"),
//                   onPressed: () async {
//                     DocumentSnapshot snapshot =
//                         await DatabaseServices.getdata("1");

//                     print(snapshot.data["nama"]);
//                     print(snapshot.data["price"]);
//                   },
//                 ),
//                 RaisedButton(
//                   child: Text("delete Data"),
//                   onPressed: () {
//                     DatabaseServices.deleteData("1");
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
