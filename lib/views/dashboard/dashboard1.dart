//import 'dart:html';

// import 'dart:js';

// import 'dart:async';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
// import 'package:mobileApp_ppm/auth/setting.dart';
import 'package:mobileApp_ppm/models/leave_model.dart';
// import 'package:mobileApp_ppm/request_form/create_form_leave.dart';
// import 'package:mobileApp_ppm/constans.dart';
// import 'package:mobileApp_ppm/list_inquiry/history_request.dart';
// import 'package:mobileApp_ppm/payslip/my_payslip.dart';

class HomePage extends StatelessWidget {
  final Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    List<LeaveModel> dumyData = List.generate(
      10,
      (index) {
        return LeaveModel(
            faker.job.title(),
            faker.person.name(),
            faker.person.name(),
            faker.food.restaurant(),
            faker.date.month(),
            faker.date.month());
      },
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("test model"),
      ),
      body: Container(
        child: GridView.builder(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    shape: BoxShape.rectangle,
                    color: Colors.red),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                    dumyData[index].reason_leave,
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
                                    dumyData[index].type_ijin,
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
                                      dumyData[index].start_date,
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
                                        dumyData[index].to_date,
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
                                        dumyData[index].reason_leave,
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
            },
            itemCount: 1),
      ),
    );
  }
}
