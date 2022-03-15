import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:mobileApp_ppm/views/dashboard/dashboard.dart';
// import 'dart:convert';
import 'package:http/http.dart' as http;

class SigninPage extends StatefulWidget {
  const SigninPage({Key key}) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController txtEmail = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQueryheight = MediaQuery.of(context).size.height;
    final mediaQuerywidth = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // appBar: buildAppBar(),
        title: 'PPM',
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: <Widget>[
                // Container(
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage("assets/images/small-logo.png"),
                //       fit: BoxFit.cover,
                //       alignment: Alignment.bottomCenter,
                //     ),
                //   ),
                // ),
                ListView(
                  children: <Widget>[
                    Container(
                      width: mediaQuerywidth,
                      height: mediaQueryheight * 0.35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/logo-ppm.png"),
                          fit: BoxFit.contain,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 40, right: 40),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Icon(
                                    Icons.alternate_email,
                                    color: Colors.red,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: txtEmail,
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(color: Colors.black),
                                      hintText: "Email",
                                      focusColor: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 40, right: 40),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Icon(
                                    Icons.vpn_key,
                                    color: Colors.red,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    obscureText: true,
                                    controller: txtPassword,
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(color: Colors.black),
                                      hintText: "Password",
                                      focusColor: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          // Spacer(),
                          // Padding(
                          //   // padding: const EdgeInsets.only(bottom: 40, top: 40),
                          //   // child: Row(
                          //   //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //   //   children: <Widget>[
                          //   //     GestureDetector(
                          //   //       onTap: () {
                          //   //         Navigator.push(context, MaterialPageRoute(
                          //   //           builder: (context) {
                          //   //             return RegisterPage();
                          //   //           },
                          //   //         ));
                          //   //       },
                          //   //       child: Container(
                          //   //         width: 320,
                          //   //         alignment: Alignment.center,
                          //   //         padding: EdgeInsets.all(23),
                          //   //         decoration: BoxDecoration(
                          //   //           borderRadius: BorderRadius.circular(20),
                          //   //           shape: BoxShape.rectangle,
                          //   //           color: colorContainer,
                          //   //         ),
                          //   //         child: Text(
                          //   //           "Sign Up",
                          //   //           style: TextStyle(color: Colors.white),
                          //   //         ),
                          //   //       ),
                          //   //     ),
                          //   //   ],
                          //   // ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    _doLogin();
                                    // Navigator.pushReplacement(context,
                                    //     MaterialPageRoute(
                                    //   builder: (context) {
                                    //     return Dashboard();
                                    //   },
                                    // ));
                                  },
                                  child: Container(
                                    width: mediaQuerywidth * 0.75,
                                    height: mediaQueryheight * 0.09,
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      shape: BoxShape.rectangle,
                                      color: Colors.red,
                                    ),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )));
  }

  Future _doLogin() async {
    Uri url = Uri.parse("https://ppm.engineeringlife.id/api/login");

    if (txtEmail.text.isEmpty || txtPassword.text.isEmpty) {
      Alert(
              context: context,
              title: "Masukan email dan password",
              type: AlertType.error)
          .show();
    } else {
      ProgressDialog progressDialog = ProgressDialog(context);
      progressDialog.style(message: "Loading...");
      progressDialog.show();
      final response = await http.post(url,
          body: {'email': txtEmail.text, 'password': txtPassword.text},
          headers: {'Accept': 'application/json'});
      progressDialog.hide();

      if (response.statusCode == 200) {
        Navigator.pushReplacementNamed(context, 'dashboard');
      } else {
        // progressDialog.hide();
        Alert(
                context: context,
                title: "email/password salah",
                type: AlertType.error)
            .show();
      }
    }
  }
}
