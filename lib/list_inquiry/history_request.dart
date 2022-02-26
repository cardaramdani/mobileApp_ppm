import 'package:flutter/material.dart';
import 'package:mobile_app_ppm/constans.dart';
import 'package:mobile_app_ppm/auth/setting.dart';
import 'package:mobile_app_ppm/dashboard/dashboard.dart';
import 'package:mobile_app_ppm/payslip/my_payslip.dart';

class ListInquiry extends StatefulWidget {
  ListInquiry({Key key}) : super(key: key);

  @override
  _ListInquiryState createState() => _ListInquiryState();
}

class _ListInquiryState extends State<ListInquiry> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Engineering App',
      home: Scaffold(
          appBar: AppBar(
            title: Text("History Request"),
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
                      image: AssetImage("assets/images/logo-ppm.png"),
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
                  leading: Text("Nama staff",
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
                  onTap: () {},
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
              ],
            ),
          ),
          //isi dalam body
          body: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(),
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
                flex: 2,
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Created",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
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
                          margin: EdgeInsets.only(right: 10, left: 10),
                          child: Icon(
                            Icons.app_registration,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Type Leave",
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
                          margin: EdgeInsets.only(right: 10, left: 10),
                          child: Icon(
                            Icons.calendar_today,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          child: Text(
                            "Start date",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10, left: 10),
                          child: Icon(
                            Icons.calendar_today,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          child: Text(
                            "to date",
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
                          margin: EdgeInsets.only(right: 10, left: 10),
                          child: Icon(
                            Icons.book,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          child: Text(
                            "reason",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10, left: 10),
                          child: Icon(
                            Icons.check,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          child: Text(
                            "status",
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
