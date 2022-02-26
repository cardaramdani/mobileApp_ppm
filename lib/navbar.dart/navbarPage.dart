import 'package:flutter/material.dart';
import 'package:mobile_app_ppm/constans.dart';
import 'package:mobile_app_ppm/auth/setting.dart';
import 'package:mobile_app_ppm/list_inquiry/history_request.dart';

class NavbarPage extends StatelessWidget {
  const NavbarPage({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: TitleWithCustomUnderline(text: title),
      leading: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              width: 50,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo2.png"),
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            ListTile(
              title: CircleAvatar(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SettingPage();
                      },
                    ));
                  },
                  child: Container(
                    width: 320,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 80),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Icon(
                      Icons.settings,
                      color: kBackgroundColor,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
              ),
              leading: Text("nama engineering",
                  style: TextStyle(color: kBackgroundColor, fontSize: 20)),
            ),
            ListTile(
              onTap: () {},
              title: Text("Home",
                  style: TextStyle(color: kBackgroundColor, fontSize: 20)),
              leading: CircleAvatar(
                child: Icon(
                  Icons.home,
                  color: kBackgroundColor,
                  size: 35,
                ),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ListInquiry();
                  },
                ));
              },
              title: Text("Inquiry List",
                  style: TextStyle(color: kBackgroundColor, fontSize: 20)),
              leading: CircleAvatar(
                child: Icon(
                  Icons.menu_book,
                  color: kBackgroundColor,
                  size: 35,
                ),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Status Update",
                style: TextStyle(color: kBackgroundColor, fontSize: 20),
              ),
              leading: CircleAvatar(
                child: Icon(
                  Icons.update,
                  color: kBackgroundColor,
                  size: 35,
                ),
                backgroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
