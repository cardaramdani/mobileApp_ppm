import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../providers/leaves.dart';
import '../../views/dashboard/dashboard.dart';
import '../../widgets/time_picker_widget.dart';
import '../../widgets/date_picker_widget.dart';
import '../../widgets/datepicker.dart';

class AddLeaves extends StatefulWidget {
  static const route = "/add/leave";
  AddLeaves({Key key}) : super(key: key);

  @override
  State<AddLeaves> createState() => _AddLeavesState();
}

class _AddLeavesState extends State<AddLeaves> {
  final TextEditingController typeijinController = TextEditingController();
  final TextEditingController namapenggantiController = TextEditingController();
  final TextEditingController reasonleaveController = TextEditingController();
  final TextEditingController startdateController = TextEditingController();
  final TextEditingController todateController = TextEditingController();
  final formattanggal = DateFormat("yyyy-MM-dd");

  String pilihTanggal, labelText;
  final TextStyle valueStyle = TextStyle(fontSize: 16.0);

  DateTime tgl_startdate = new DateTime.now();
  DateTime tgl_enddate = new DateTime.now();
  Future<Null> _selectedstartDate(BuildContext context) async {
    final DateTime picked_startdate = await showDatePicker(
        context: context,
        initialDate: tgl_startdate,
        firstDate: DateTime.now(),
        lastDate: DateTime((DateTime.now().year + 1)));

    if (picked_startdate != null && picked_startdate != tgl_startdate) {
      setState(() {
        tgl_startdate = picked_startdate;
        startdateController.text =
            new DateFormat('yyyy-MM-dd').format(tgl_startdate);
      });
    } else {}
  }

  Future<Null> _selectedendDate(BuildContext context) async {
    final DateTime picked_enddate = await showDatePicker(
        context: context,
        initialDate: tgl_enddate,
        firstDate: DateTime.now(),
        lastDate: DateTime((DateTime.now().year + 1)));

    if (picked_enddate != null && picked_enddate != tgl_enddate) {
      setState(() {
        tgl_enddate = picked_enddate;
        todateController.text =
            new DateFormat('yyyy-MM-dd').format(tgl_enddate);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryheight = MediaQuery.of(context).size.height;
    void save(String type_ijin, String nama_pengganti, String reason_leave,
        String start_date, String to_date) {
      try {
        Provider.of<Leaves>(context, listen: false)
            .addLeave(
                type_ijin, nama_pengganti, reason_leave, start_date, to_date)
            .then((value) => Navigator.pop(context));
      } catch (pesan) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Error Occured"),
              content: Text("Error : $pesan"),
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
                        controller: typeijinController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Type ijin stateless",
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
                      child: DateDropDown(
                        labelText: "Start date",
                        valueText:
                            new DateFormat('yyyy-MM-dd').format(tgl_startdate),
                        valueStyle: valueStyle,
                        onPressed: () {
                          _selectedstartDate(context);
                        },
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
                      child: DateDropDown(
                        labelText: "To date",
                        valueText:
                            new DateFormat('yyyy-MM-dd').format(tgl_enddate),
                        valueStyle: valueStyle,
                        onPressed: () {
                          _selectedendDate(context);
                        },
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
                        controller: namapenggantiController,
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
                        controller: reasonleaveController,
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
                      child: DatePickerWidget(),
                    ),
                    Expanded(
                      child: DatePickerWidget(),
                    ),
                    Expanded(
                      child: TimePickerWidget(),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  child: GestureDetector(
                    onTap: () => save(
                        typeijinController.text,
                        namapenggantiController.text,
                        reasonleaveController.text,
                        startdateController.text,
                        todateController.text),
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
                  // ElevatedButton(
                  //   onPressed: () => save(
                  //       typeijinController.text,
                  //       namapenggantiController.text,
                  //       reasonleaveController.text,
                  //       startdateController.text,
                  //       todateController.text),
                  //   child: Text(
                  //     "Submit",
                  //     style: TextStyle(
                  //       fontSize: 18,
                  //     ),
                  //   ),
                  //   style: ElevatedButton.styleFrom(
                  //     padding: EdgeInsets.symmetric(vertical: 15),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(100),
                  //     ),
                  //   ),
                  // ),
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
