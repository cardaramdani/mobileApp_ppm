import 'package:flutter/material.dart';
import 'package:latihan_fluter/constans.dart';
import 'package:latihan_fluter/auth/setting.dart';
import 'package:latihan_fluter/dashboard/dashboard.dart';
import 'package:latihan_fluter/list_inquiry/list_inquiry.dart';

class UpdateStatusPage extends StatefulWidget {
  UpdateStatusPage({Key key}) : super(key: key);

  @override
  _UpdateStatusPageState createState() => _UpdateStatusPageState();
}

class _UpdateStatusPageState extends State<UpdateStatusPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Engineering App',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Update Terbaru"),
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
                      ));},
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
                  onTap: () {},
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
            Image(
              image: AssetImage("assets/icons/Icon_PublicArea.png"),
            ),
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
