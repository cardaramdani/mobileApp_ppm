import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobileApp_ppm/views/dashboard/dashboard.dart';
// import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class FormRequest extends StatefulWidget {
  const FormRequest({Key key}) : super(key: key);

  @override
  _FormRequestState createState() => _FormRequestState();
}

class _FormRequestState extends State<FormRequest> {
  @override
  Widget build(BuildContext context) {
    final formattanggal = DateFormat("yyyy-MM-dd");
    final mediaQueryheight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.white),
        ),
        Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(
                width: 50,
                height: mediaQueryheight * 0.18,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo-ppm.png"),
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Icon(
                        Icons.app_registration,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black),
                          hintText: "type ijin",
                          focusColor: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black),
                          hintText: "Nama pengganti",
                          focusColor: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black),
                          hintText: "end date",
                          focusColor: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Icon(
                        Icons.note_add,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black),
                          hintText: "Reason",
                          focusColor: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return Dashboard();
                          },
                        ));
                      },
                      child: Container(
                        width: 250,
                        height: mediaQueryheight * 0.07,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          color: Colors.red,
                        ),
                        child: Text(
                          "Submit",
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
              // Flexible(
              //   flex: 4,
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 16),
              //     child: Column(
              //       children: <Widget>[

              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        )
      ],
    ));
  }
}
