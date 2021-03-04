//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:latihan_fluter/constans.dart';
import 'package:latihan_fluter/auth/setting.dart';
import 'package:latihan_fluter/list_inquiry/list_inquiry.dart';
import 'package:latihan_fluter/update_status/update_status.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Engineering App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
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
                leading: Text("Nama engineering",
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/gear.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets.all(20),
              children: <Widget>[
                Text(
                  "Hii, Nama Engineering",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "Tampilan Laporan pekerjaanmu ",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                totalWobelumterjadwal(),
                totalWosudahterjadwal(),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Create Internal Wo"),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  elevation: 90,
                ),
                Text(
                  "jadwal pekerjaan hari ini ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                containerWohariini(),
                iwO(),iwO()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Card iwO() {
  return Card(
      child: Column(
    children: <Widget>[
      Container(margin: EdgeInsets.only(left:10.0, right:10.0,bottom: 1.0),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[Text("089809/890ao/90"),
      Text("status pekerjaan")],)),
      Container(margin: EdgeInsets.only(left:10.0, right:10.0,bottom: 10.0),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[Text("engineering pompa"),
      Image(
                image: AssetImage("assets/icons/icon-atr-reschedule.png"))],)),
      Container(margin: EdgeInsets.only(left:10.0, right:10.0),child: Row(children: <Widget>[
      Icon(Icons.date_range),Text("12 des 2020"),Icon(Icons.person),Text("1207")],)),
      Container(margin: EdgeInsets.only(left:10.0, right:10.0),child: Row(children: <Widget>[
      Icon(Icons.home),Text("Orchard 2019")],)),
    ],
  ),);
}

Container containerWohariini() {
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
            Flexible(
                flex: 2,
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(),
                  child: Text(
                    "No WO",
                    style: TextStyle(color: warnaAksara),
                  ),
                )),
            Flexible(
              flex: 1,
              child: Text(
                "Status Pekerjaan",
                style: TextStyle(color: warnaAksara),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
                flex: 2,
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(),
                  child: Text(
                    "Kategory wo - type wo",
                    style: TextStyle(color: warnaAksara),
                  ),
                )),
            Flexible(
              flex: 1,
              child: Image(
                image: AssetImage("assets/icons/icon-atr-reschedule.png"),
              ),
            ),
          ],
        ),
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
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "created_at",
                          style: TextStyle(color: warnaAksara),
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
                            Icons.person,
                            color: Colors.white,
                          ),
                          Text(
                            "nama penghuni",
                            style: TextStyle(color: warnaAksara),
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
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          child: Text(
                            "Tower dan unit",
                            style: TextStyle(color: warnaAksara),
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
