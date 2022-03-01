import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:mobileApp_ppm/constans.dart';
import 'package:mobileApp_ppm/views/dashboard/dashboard.dart';
import 'package:mobileApp_ppm/views/auth/change_pass.dart';
import 'package:mobileApp_ppm/views/auth/loginpage.dart';
import 'package:mobileApp_ppm/views/list_inquiry/history_request.dart';
import 'package:mobileApp_ppm/views/payslip/my_payslip.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryheight = MediaQuery.of(context).size.height;

    return MaterialApp(
        title: "Engineering app",
        home: Scaffold(
            appBar: AppBar(
              title: Text("SETTING"),
              backgroundColor: Colors.red[400],
            ),
            backgroundColor: Colors.white,
            drawer: Drawer(
              backgroundColor: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: mediaQueryheight * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo3.png"),
                        fit: BoxFit.contain,
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.white,
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
                    leading: Text("Nama staff ppm",
                        style: TextStyle(color: kBackgroundColor)),
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
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
                    tileColor: Colors.white,
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return ListInquiry();
                        },
                      ));
                    },
                    title: Text("History Request",
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
                    tileColor: Colors.white,
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return UpdateStatusPage();
                        },
                      ));
                    },
                    title: Text("My Payslip",
                        style: TextStyle(color: kBackgroundColor)),
                    leading: CircleAvatar(
                      child: Icon(
                        Icons.work_sharp,
                        color: kBackgroundColor,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
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
                      image: AssetImage("assets/images/logo-ppm.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("First Name :",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("Last Name",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("Phone Number",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("alamat email",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("Departement",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("position",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("nik",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("Date Of Birthday :",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("Status :",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("No KTP :",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("Bpjs kes",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("Bpjs ket",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("Nppwp :",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("Join Date :",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("Edukasi",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("Agama :",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("Jenis Kelamin",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("Negara :",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.1),
                            child: ListTile(
                              title: Text("alamat :",
                                  style: TextStyle(
                                      color: Colors.blueGrey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
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
                                                BorderRadius.circular(5),
                                            color: Colors.red,
                                          ),
                                          height: 50,
                                          margin: EdgeInsets.only(top: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Container(
                                                    child: Icon(
                                                      Icons.vpn_key,
                                                      color:
                                                          Colors.blueGrey[900],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "Ganti password",
                                                style: TextStyle(
                                                    color: Colors.blueGrey[900],
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                              Icon(Icons.keyboard_arrow_right,
                                                  color: Colors.blueGrey[900])
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
                                              return SigninPage();
                                            },
                                          ));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.red,
                                          ),
                                          height: 50,
                                          margin: EdgeInsets.only(top: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Container(
                                                    child: Icon(
                                                      Icons.logout,
                                                      color:
                                                          Colors.blueGrey[900],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "Logout          ",
                                                style: TextStyle(
                                                    color: Colors.blueGrey[900],
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                              Icon(Icons.keyboard_arrow_right,
                                                  color: Colors.blueGrey[900])
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
                ),
              ],
            )));
  }
}
