import 'package:flutter/material.dart';

class LeaveModel {
  String id,
      id_peminta,
      id_pengganti,
      id_depthead,
      id_hrd,
      status_staff,
      status_depthead,
      status_hrd,
      type_ijin,
      start_date,
      end_date,
      leave_reason,
      reject;
  DateTime createdAt, updatedAt;

  LeaveModel({
    this.id,
    this.id_peminta,
    this.id_pengganti,
    this.id_depthead,
    this.id_hrd,
    this.status_staff,
    this.status_depthead,
    this.status_hrd,
    this.type_ijin,
    this.start_date,
    this.end_date,
    this.leave_reason,
    this.reject,
    this.createdAt,
    this.updatedAt,
  });
}
