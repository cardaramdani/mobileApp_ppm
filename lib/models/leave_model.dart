import 'package:flutter/material.dart';

class LeaveModel {
  @required
  String type_ijin;
  @required
  String nama_peminta;
  @required
  String nama_pengganti;
  @required
  String reason_leave;
  @required
  String start_date;
  @required
  String to_date;

  LeaveModel(this.type_ijin, this.nama_peminta, this.nama_pengganti,
      this.reason_leave, this.start_date, this.to_date);
}
