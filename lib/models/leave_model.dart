import 'package:flutter/material.dart';
import 'dart:convert';

//ini model untuk leave
List<LeaveModel> LeaveModelFromJson(String str) =>
    List<LeaveModel>.from(json.decode(str).map((x) => LeaveModel.fromJson(x)));

String LeaveModelToJson(List<LeaveModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LeaveModel {
  LeaveModel({
    this.id_peminta,
    this.id,
    this.type_ijin,
    this.leave_reason,
    this.id_pengganti,
    this.id_depthead,
    this.id_hrd,
    this.status_staff,
    this.status_depthead,
    this.status_hrd,
    this.start_date,
    this.end_date,
    this.reject,
    this.createdAt,
    this.updatedAt,
  });

  String id_peminta;
  int id,
      id_pengganti,
      id_depthead,
      id_hrd,
      status_staff,
      status_depthead,
      status_hrd;
  String type_ijin;
  String leave_reason;

  String start_date;
  String end_date;
  String reject;
  String createdAt;
  String updatedAt;

  factory LeaveModel.fromJson(Map<String, dynamic> json) => LeaveModel(
        id_peminta: json["peminta"]["name"],
        id: json["id"],
        type_ijin: json["type_ijin"],
        leave_reason: json["leave_reason"],
        id_pengganti: json["id_pengganti"],
        id_depthead: json["id_depthead"],
        id_hrd: json["id_hrd"],
        status_staff: json["status_staff"],
        status_depthead: json["status_depthead"],
        status_hrd: json["status_hrd"],
        start_date: json["start_date"],
        end_date: json["end_date"],
        reject: json["reject"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
      );

  Map<String, dynamic> toJson() => {
        "id_peminta": id_peminta,
        "id": id,
        "type_ijin": type_ijin,
        "leave_reason": leave_reason,
        "id_pengganti ": id_pengganti,
        "id_depthead": id_depthead,
        "id_hrd": id_hrd,
        "status_staff": status_staff,
        "status_depthead": status_depthead,
        "status_hrd": status_hrd,
        "start_date": start_date,
        "end_date": end_date,
        "reject": reject,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}



// class LeaveModel {
//   // final int id_peminta,
//   //     id_pengganti,
//   //     id_depthead,
//   //     id_hrd,
//   //     status_staff,
//   //     status_depthead,
//   //     status_hrd;
//   int id, id_peminta;
//   String type_ijin, leave_reason;
//   // DateTime createdAt, updatedAt;

//   LeaveModel({
//     this.id,
//     this.id_peminta,
//     // this.id_pengganti,
//     // this.id_depthead,
//     // this.id_hrd,
//     // this.status_staff,
//     // this.status_depthead,
//     // this.status_hrd,
//     this.type_ijin,
//     // this.start_date,
//     // this.end_date,
//     this.leave_reason,
//     // this.reject,
//     // this.createdAt,
//     // this.updatedAt,
//   });
//   // @override
//   // String toString() {
//   //   return 'LeaveModel{id_peminta: $id_peminta, id_pengganti: $id_pengganti}';
//   // }

//   // factory LeaveModel.fromJson(Map<String, dynamic> json) {
//   //   return LeaveModel(
//   //       id_peminta: json["id_peminta"], id_pengganti: json["id_pengganti"]);
//   // }

// }
