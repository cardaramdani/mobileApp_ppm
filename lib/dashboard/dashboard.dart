//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mobile_app_ppm/auth/setting.dart';
import 'package:mobile_app_ppm/request_form/create_form_leave.dart';
import 'package:mobile_app_ppm/constans.dart';
import 'package:mobile_app_ppm/list_inquiry/history_request.dart';
import 'package:mobile_app_ppm/payslip/my_payslip.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PPM APP',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.red[400],
        ),
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                width: 50,
                height: 200,
                decoration: BoxDecoration(
                  color: colorContainer,
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo3.png"),
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
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SettingPage();
                        },
                      ));
                    },
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
                tileColor: colorContainer,
                onTap: () {},
                title: Text("Home", style: TextStyle(color: kBackgroundColor)),
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
                tileColor: colorContainer,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
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
              ListTile(tileColor: colorContainer),
              ListTile(tileColor: colorContainer),
              ListTile(tileColor: colorContainer),
              ListTile(tileColor: colorContainer),
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
              decoration: BoxDecoration(),
            ),
            ListView(
              padding: EdgeInsets.all(20),
              children: <Widget>[
                Text(
                  "Hii, Nama staf PPM",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),

                // totalWobelumterjadwal(),
                // totalWosudahterjadwal(),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return FormRequest();
                      },
                    ));
                  },
                  color: Colors.greenAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Create New Request"),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  elevation: 90,
                ),
                Text(
                  "Inquery Assigned To Tou ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                // contohwo(),
                containerWohariini(),
                containerWohariini(),
                containerWohariini(),
                containerWohariini(),
                containerWohariini(),
                containerWohariini(),
                containerWohariini(),
                containerWohariini(),
                // iwO(),
                // iwO()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ListTile contohwo() {
//   return ListTile(
//     contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//     title: Text("type request"),
//     subtitle: Text("nama"),
//     leading: CircleAvatar(),
//     hoverColor: Colors.red,
//     focusColor: Colors.red,
//   );
// }

Card iwO() {
  return Card(
    child: Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("089809/890ao/90"),
                Text("status pekerjaan")
              ],
            )),
        Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("engineering pompa"),
                Image(image: AssetImage("assets/icons/icon-atr-reschedule.png"))
              ],
            )),
        Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.date_range),
                Text("12 des 2020"),
                Icon(Icons.person),
                Text("1207")
              ],
            )),
        Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[Icon(Icons.home), Text("Orchard 2019")],
            )),
      ],
    ),
  );
}

Container containerWohariini() {
  return Container(
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        shape: BoxShape.rectangle,
        color: colorContainer),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.transparent,
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Nama Peminta ",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.transparent,
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.app_registration,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Type Request ",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: <Widget>[
        //     // Flexible(
        //     //     flex: 2,
        //     //     child: Container(
        //     //       alignment: Alignment.centerLeft,
        //     //       margin: EdgeInsets.only(),
        //     //       child: Text(
        //     //         "Kategory wo - type wo",
        //     //         style: TextStyle(color: warnaAksara),
        //     //       ),
        //     //     )),
        //     // Flexible(
        //     //   flex: 1,
        //     //   child: Image(
        //     //     image: AssetImage("assets/icons/icon-atr-reschedule.png"),
        //     //   ),
        //     // ),
        //   ],
        // ),
        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.transparent,
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.calendar_today,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "start date",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                      alignment: Alignment.centerRight,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.transparent,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.calendar_today,
                            color: Colors.black,
                          ),
                          Text(
                            "end date",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.transparent,
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.book,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          child: Text(
                            "Reason ",
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
        //batas container
      ],
    ),
  );
}

Container totalWobelumterjadwal() {
  return Container(
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
        color: colorContainer),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                child: Image(
                  image: AssetImage(
                      "assets/icons/icon-dashboard-awaiting-schedule.png"),
                ),
                color: Colors.transparent,
                width: 50,
                height: 50),
            Flexible(
                flex: 2,
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(),
                  child: Text(
                    "kamu telah di tugaskan sebagai supervisor pekerjaan ini kamu telah di tugaskan sebagai supervisor pekerjaan ini",
                    style: TextStyle(color: warnaAksara),
                  ),
                )),
            Flexible(
              flex: 1,
              child: Text(
                "2 hari lalu",
                style: TextStyle(color: warnaAksara),
              ),
            ),
          ],
        )
        //batas container
      ],
    ),
  );
}

Container totalWosudahterjadwal() {
  return Container(
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
        color: colorContainer),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                child: Image(
                  image: AssetImage(
                      "assets/icons/icon-inquiry-not-start-work.png"),
                ),
                color: Colors.transparent,
                width: 50,
                height: 50),
            Flexible(
                flex: 2,
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(),
                  child: Text(
                    "kamu telah di tugaskan sebagai supervisor pekerjaan ini kamu telah di tugaskan sebagai supervisor pekerjaan ini",
                    style: TextStyle(color: warnaAksara),
                  ),
                )),
            Flexible(
              flex: 1,
              child: Text(
                "2 hari lalu",
                style: TextStyle(color: warnaAksara),
              ),
            ),
          ],
        )
        //batas container
      ],
    ),
  );
}
