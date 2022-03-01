import 'package:flutter/material.dart';
import 'package:mobileApp_ppm/constans.dart';
import 'package:mobileApp_ppm/views/auth/setting.dart';
import 'package:mobileApp_ppm/views/dashboard/dashboard.dart';
import 'package:mobileApp_ppm/views/list_inquiry/history_request.dart';

class UpdateStatusPage extends StatefulWidget {
  UpdateStatusPage({Key key}) : super(key: key);

  @override
  _UpdateStatusPageState createState() => _UpdateStatusPageState();
}

class _UpdateStatusPageState extends State<UpdateStatusPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryheight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Engineering App',
      home: Scaffold(
          appBar: AppBar(
            title: Text("My Payslip"),
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
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
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
