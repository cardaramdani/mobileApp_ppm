import 'package:flutter/material.dart';
import 'package:latihan_fluter/constans.dart';
import 'package:latihan_fluter/auth/setting.dart';
import 'package:latihan_fluter/dashboard/dashboard.dart';
 import 'package:latihan_fluter/update_status/update_status.dart';

class ListInquiry extends StatefulWidget {
  ListInquiry({Key key}) : super(key: key);

  @override
  _ListInquiryState createState() => _ListInquiryState();
}

class _ListInquiryState extends State<ListInquiry> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Engineering App',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Daftar Permintaan"),
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
                        ));},
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
          //isi dalam body
          body: Stack(
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
                  containerWo(),
                  containerWo(),
                  containerWo(),
                  containerWo(),
                  containerWo(),
                  containerWo(),
                ],
              ),
            ],
          )),
    );
  }
}

Container containerWo() {
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
