

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:latihan_fluter/constans.dart';
import 'package:latihan_fluter/dashboard/dashboard.dart';
import 'package:latihan_fluter/auth/change_pass.dart';
import 'package:latihan_fluter/auth/loginpage.dart';
import 'package:latihan_fluter/list_inquiry/list_inquiry.dart';
import 'package:latihan_fluter/update_status/update_status.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Engineering app",
        home: Scaffold(
            appBar: AppBar(
              title: Text("SETTING"),
              backgroundColor: kPrimaryColor,
            ),
            backgroundColor: kBackgroundColor,
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 200,
                    decoration: BoxDecoration(
                      color: colorContainer,
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo2.png"),
                        fit: BoxFit.contain,
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  ListTile(
                    tileColor: colorContainer,
                    title: Container(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.settings,
                          color: kBackgroundColor,
                        ),
                      ),
                    ),
                    leading: Text("Nama engineering",
                        style: TextStyle(color: kBackgroundColor)),
                  ),
                  ListTile(
                    tileColor: colorContainer,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Dashboard();
                        },
                      ));
                    },
                    title:
                        Text("Home", style: TextStyle(color: kBackgroundColor)),
                    leading: CircleAvatar(
                      child: Icon(Icons.home, color: kBackgroundColor),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  ListTile(
                    tileColor: colorContainer,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ListInquiry();
                        },
                      ));
                    },
                    title: Text("Inquiry List",
                        style: TextStyle(color: kBackgroundColor)),
                    leading: CircleAvatar(
                      child: Icon(
                        Icons.menu_book,
                        color: kBackgroundColor,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  ListTile(
                    tileColor: colorContainer,

                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return UpdateStatusPage();
                      },
                    ));
                  },
                  title: Text("Update Terbaru",
                      style: TextStyle(color: kBackgroundColor)),
                  leading: CircleAvatar(
                    child: Icon(Icons.work_sharp, color: kBackgroundColor, ),
                    backgroundColor: Colors.transparent,
                  ),
                  ),
                  ListTile(tileColor: colorContainer),
                  ListTile(tileColor: colorContainer),
                  ListTile(tileColor: colorContainer),
                  ListTile(tileColor: colorContainer),
                ],
              ),
            ),
            body: Stack(
              //backgroung
              //listview
              //button di tengah bawah
              children: <Widget>[
                
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/gear.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ),
                ListView(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: Text("Namana User",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20)),
                        ),
                        ListTile(
                          title: Text("No telpon",
                              style: TextStyle(color: Colors.white)),
                          leading: CircleAvatar(
                            child: Icon(Icons.phone, color: Colors.white),
                            backgroundColor: kPrimaryColor,
                          ),
                        ),
                        ListTile(
                          title: Text("Alamat email",
                              style: TextStyle(color: Colors.white)),
                          leading: CircleAvatar(
                            child: Icon(Icons.email, color: Colors.white),
                            backgroundColor: kPrimaryColor,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                                flex: 1,
                                child: Column(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return ChangePasswordPage();
                                          },
                                        ));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: colorContainer,
                                        ),
                                        height: 50,
                                        margin: EdgeInsets.only(top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                Container(
                                                  child: Icon(
                                                    Icons.vpn_key,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "Ganti password",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            Icon(Icons.keyboard_arrow_right,
                                                color: Colors.white)
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                                flex: 1,
                                child: Column(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return LoginPage();
                                          },
                                        ));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: colorContainer,
                                        ),
                                        height: 50,
                                        margin: EdgeInsets.only(top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                Container(
                                                  child: Icon(
                                                    Icons.logout,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "Logout          ",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            Icon(Icons.keyboard_arrow_right,
                                                color: Colors.white)
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )));
  }
}