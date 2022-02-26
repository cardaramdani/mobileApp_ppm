import 'package:flutter/material.dart';
import 'package:mobile_app_ppm/constans.dart';
import 'package:mobile_app_ppm/auth/setting.dart';
import 'package:mobile_app_ppm/dashboard/dashboard.dart';
import 'package:mobile_app_ppm/list_inquiry/history_request.dart';

class UpdateStatusPage extends StatefulWidget {
  UpdateStatusPage({Key key}) : super(key: key);

  @override
  _UpdateStatusPageState createState() => _UpdateStatusPageState();
}

class _UpdateStatusPageState extends State<UpdateStatusPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Engineering App',
      home: Scaffold(
          appBar: AppBar(
            title: Text("My Payslip"),
            backgroundColor: Colors.red[400],
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
                  onTap: () {},
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
        color: Colors.red[400]),
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
                    "file pdf from web",
                    style: TextStyle(color: warnaAksara),
                  ),
                )),
            Flexible(
              flex: 1,
              child: Text(
                "Bulan januari clickable",
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
