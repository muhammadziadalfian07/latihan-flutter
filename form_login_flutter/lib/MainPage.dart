import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  double getSmallDiamter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double getBigDiamter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: <Widget>[
          Positioned(
            right: -getSmallDiamter(context) / 3,
            top: -getSmallDiamter(context) / 3,
            child: Container(
              width: getSmallDiamter(context),
              height: getSmallDiamter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFB226B2),
                    Color(0xFFFF6DA7),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: -getBigDiamter(context) / 4,
            top: -getBigDiamter(context) / 4,
            child: Container(
              child: Center(
                child: Text(
                  "dribble",
                  style: TextStyle(
                    fontFamily: "Pacifico",
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              width: getBigDiamter(context),
              height: getBigDiamter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFB226B2),
                    Color(0xFFFF6DA7),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            right: -getBigDiamter(context) / 4,
            bottom: -getBigDiamter(context) / 4,
            child: Container(
              width: getBigDiamter(context),
              height: getBigDiamter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E9EE),
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Color(0xFFFF6DA7),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFF6DA7),
                          ),
                        ),
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Color(0xFFFF6DA7),
                        ),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color: Color(0xFFFF6DA7),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFF6DA7),
                          ),
                        ),
                        labelText: "Password",
                        labelStyle:
                            TextStyle(color: Color(0xFFFF6DA7), fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 15),
                  child: Text(
                    "FORGET PASSWORD?",
                    style: TextStyle(
                      color: Color(0xFFFF6DA7),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 40,
                      child: Container(
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            splashColor: Colors.white30,
                            onTap: () {
                              print("SIGN IN");
                            },
                            child: Center(
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFB226B2),
                                Color(0xFFFF6DA7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    FloatingActionButton(
                      elevation: 0,
                      mini: true,
                      onPressed: () {
                        print("facebook");
                      },
                      child: Image(
                        image: AssetImage("assets/fb.png"),
                      ),
                    ),
                    FloatingActionButton(
                      elevation: 0,
                      mini: true,
                      onPressed: () {
                        print("twitter");
                      },
                      splashColor: Colors.amber,
                      child: Image(
                        image: AssetImage("assets/twitter.png"),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "DON'T HAVE AN ACCOUNT? ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("SIGN UP");
                    },
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFF6DA7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
