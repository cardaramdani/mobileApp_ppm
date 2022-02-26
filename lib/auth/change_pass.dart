import 'dart:ui';

import 'package:mobile_app_ppm/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_app_ppm/auth/register.dart';
import 'package:mobile_app_ppm/constans.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // appBar: buildAppBar(),
        title: 'EngineeringApp',
        home: Scaffold(
            body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo-ppm.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                  color: Colors.black),
            ),
            ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 40, left: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.alternate_email,
                          color: Colors.blueGrey[900],
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "emailanda@gm.com",
                        style: TextStyle(
                            color: Colors.blueGrey[900], fontSize: 20),
                      )),
                    ],
                  ),
                ),
                Text(
                  "Old Password",
                  style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                              color: Colors.blueGrey[900],
                              fontWeight: FontWeight.w900),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            hintText: "Username/Email",
                            focusColor: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "New Password",
                  style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.blueGrey[900]),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            hintText: "Username/Email",
                            focusColor: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Confirm Password",
                  style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            hintText: "Username/Email",
                            focusColor: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return Dashboard();
                            },
                          ));
                        },
                        child: Container(
                          width: 320,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                            color: Colors.red,
                          ),
                          child: Text(
                            "SAVE",
                            style: TextStyle(
                                color: Colors.blueAccent[900],
                                fontWeight: FontWeight.w900,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Flexible(
                //   flex: 4,
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 16),
                //     child: Column(
                //       children: <Widget>[

                //       ],
                //     ),
                //   ),
                // ),
              ],
            )
          ],
        )));
  }
}
