import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../providers/leaves.dart';
import '../constans.dart';
import '../pages/edit_product_page.dart';

class LeaveRequest extends StatelessWidget {
  String id_peminta;
  //     id_pengganti,
  //     id_depthead,
  //     id_hrd,
  //     status_staff,
  //     status_depthead,
  //     status_hrd;
  int id;
  String type_ijin, leave_reason;

  // final DateTime updatedAt;

  LeaveRequest(
    this.id,
    this.id_peminta,
    // this.id_pengganti,
    // this.id_depthead,
    // this.id_hrd,
    // this.status_staff,
    // this.status_depthead,
    // this.status_hrd,
    this.type_ijin,
    // this.start_date,
    // this.end_date,
    this.leave_reason,
    // this.reject,
    // this.updatedAt,
  );

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<Leaves>(context, listen: false);
    // String date = DateFormat.yMMMd().add_Hms().format(updatedAt);
    return TextButton(
      onPressed: () {
        //ini maih testing msih error
        // Navigator.pushReplacementNamed(context, 'leave/add');

        Navigator.pushNamed(context, EditProductPage.route, arguments: id);
        print(id);
        print("ini");
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.red[200], borderRadius: BorderRadius.circular(5)),
        child: Column(
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
                            Icons.person,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          child: Text(
                            "$id_peminta ",
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
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.app_registration,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          child: Text(
                            "Type Request ",
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    ),
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
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "start date",
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
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.calendar_today,
                                color: Colors.black,
                              ),
                              Text(
                                "end date",
                                style: TextStyle(color: Colors.black),
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
                                Icons.book,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              child: Text(
                                "Reason ",
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Container(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       Icon(Icons.check),
                //       Icon(Icons.cancel),
                //     ],
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
    );

    // ListTile(
    //   onTap: () {
    //     //ini edit product
    //     // Navigator.pushNamed(context, EditProductPage.route, arguments: id);
    //   },
    //   leading: CircleAvatar(
    //     child: Padding(
    //       padding: const EdgeInsets.all(5),
    //       child: FittedBox(
    //         child: Text("$id_peminta"),
    //       ),
    //     ),
    //   ),
    //   title: Text("$type_ijin"),
    //   subtitle: Text("Reason to leave : $leave_reason"),
    //   trailing: IconButton(
    //     icon: Icon(Icons.delete),
    //     onPressed: () {
    //       //harusny variabel id
    //       // prov.deleteProduct("1");
    //     },
    //   ),
    // );
  }
}
