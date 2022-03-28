import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../providers/leaves.dart';
import '../../views/dashboard/dashboard.dart';

class AddLeave extends StatelessWidget {
  static const route = "/add-leave";

  final TextEditingController typeijinController = TextEditingController();
  final TextEditingController namapemintaController = TextEditingController();
  final TextEditingController reasonleaveController = TextEditingController();
  final TextEditingController startdateController = TextEditingController();
  final TextEditingController todateController = TextEditingController();
  final formattanggal = DateFormat("yyyy-MM-dd");

  @override
  Widget build(BuildContext context) {
    final mediaQueryheight = MediaQuery.of(context).size.height;
    void save(String type_ijin, String nama_peminta, String reason_leave,
        String start_date, String to_date) {
      try {
        Provider.of<Leaves>(context, listen: false)
            .addLeave(
                type_ijin, nama_peminta, reason_leave, start_date, to_date)
            .then((value) => Navigator.pop(context));
      } catch (err) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Error Occured"),
              content: Text("Error : $err"),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("OKAY"),
                ),
              ],
            );
          },
        );
      }
    }

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
                        autocorrect: false,
                        autofocus: true,
                        controller: typeijinController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Type ijin",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
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
                        Icons.calendar_today,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        autocorrect: false,
                        autofocus: true,
                        controller: typeijinController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Start Date",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
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
                        Icons.calendar_today,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        autocorrect: false,
                        autofocus: true,
                        controller: typeijinController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "End Date",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
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
                        autocorrect: false,
                        autofocus: true,
                        controller: typeijinController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Subsitute Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
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
                        Icons.list,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        autocorrect: false,
                        autofocus: true,
                        controller: typeijinController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Leave Reason",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
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
