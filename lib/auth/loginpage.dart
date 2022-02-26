import 'package:mobile_app_ppm/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_app_ppm/auth/register.dart';
import 'package:mobile_app_ppm/constans.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // appBar: buildAppBar(),
        title: 'PPM',
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: <Widget>[
                // Container(
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage("assets/images/small-logo.png"),
                //       fit: BoxFit.cover,
                //       alignment: Alignment.bottomCenter,
                //     ),
                //   ),
                // ),
                ListView(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/logo-ppm.png"),
                          fit: BoxFit.contain,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 40, left: 40, right: 40),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.alternate_email,
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.black),
                                hintText: "Email",
                                focusColor: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 16, left: 40),
                          child: Icon(
                            Icons.lock,
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            style: TextStyle(color: Colors.black),
                            obscureText: true,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: "Password",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40, top: 40),
                      // child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //   children: <Widget>[
                      //     GestureDetector(
                      //       onTap: () {
                      //         Navigator.push(context, MaterialPageRoute(
                      //           builder: (context) {
                      //             return RegisterPage();
                      //           },
                      //         ));
                      //       },
                      //       child: Container(
                      //         width: 320,
                      //         alignment: Alignment.center,
                      //         padding: EdgeInsets.all(23),
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(20),
                      //           shape: BoxShape.rectangle,
                      //           color: colorContainer,
                      //         ),
                      //         child: Text(
                      //           "Sign Up",
                      //           style: TextStyle(color: Colors.white),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return Dashboard();
                                },
                              ));
                            },
                            child: Container(
                              width: 250,
                              height: 60,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                shape: BoxShape.rectangle,
                                color: Colors.red,
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}
