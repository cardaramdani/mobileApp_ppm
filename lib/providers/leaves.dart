import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

// import '../models/product.dart';
import '../models/leave_model.dart';

class Leaves with ChangeNotifier {
  String token, userId;

  void updateData(tokenData, uid) {
    token = tokenData;
    userId = uid;
    notifyListeners();
  }

  String urlMaster = "https://ppm.engineeringlife.id/api";
  List<LeaveModel> _allLeave = [];

  List<LeaveModel> get allLeave => _allLeave;
//class untuk add request
  Future<void> addLeave(String type_ijin, String nama_peminta,
      String reason_leave, String start_date, String to_date) async {
    Uri url = Uri.parse("$urlMaster/leave/add");
    // Uri url = Uri.parse("$urlMaster/leave/add?auth=$token");
    // DateTime dateNow = DateTime.now();
    try {
      var response = await http.post(url, body: {
        'type_ijin': type_ijin,
        'nama_peminta': nama_peminta,
        'reason_leave': reason_leave,
        'start_date': start_date,
        'to_date': to_date
      }, headers: {
        'Authorization': 'Bearer $token'
      }
          // headers: {'Accept': 'application/json'},
          );

      if (response.statusCode > 300 || response.statusCode < 200) {
        throw (response.statusCode);
      } else {
        LeaveModel data = LeaveModel(
          type_ijin: json.decode(response.body)['type_ijin'].toString(),
          id_peminta: nama_peminta,
          leave_reason: reason_leave,
          start_date: start_date,
          end_date: to_date,
        );

        _allLeave.add(data);
        notifyListeners();
      }
    } catch (err) {
      throw (err);
    }
  }

//edit request
  void editRequest(String id, String type_ijin, String nama_peminta,
      String reason_leave, String start_date, String to_date) async {
    Uri url = Uri.parse("$urlMaster/leave/edit/$id.json?auth=$token");
    DateTime date = DateTime.now();
    try {
      var response = await http.patch(
        url,
        body: json.encode({
          'type_ijin': type_ijin,
          'nama_peminta': nama_peminta,
          'reason_leave': reason_leave,
          'start_date': start_date,
          'to_date': to_date
        }),
      );

      if (response.statusCode > 300 || response.statusCode < 200) {
        throw (response.statusCode);
      } else {
        LeaveModel edit = _allLeave.firstWhere((element) => element.id == id);
        edit.type_ijin = type_ijin;
        edit.leave_reason = reason_leave;
        edit.start_date = start_date;
        edit.end_date = to_date;
        notifyListeners();
      }
    } catch (err) {
      throw (err);
    }
  }

//delet
  void deleteProduct(String id) async {
    Uri url = Uri.parse("$urlMaster/leave/delete/$id.json?auth=$token");

    try {
      var response = await http.delete(url);

      if (response.statusCode > 300 || response.statusCode < 200) {
        throw (response.statusCode);
      } else {
        _allLeave.removeWhere((element) => element.id == id);
        notifyListeners();
      }
    } catch (err) {
      throw (err);
    }
  }

  LeaveModel selectById(String id) {
    return _allLeave.firstWhere((element) => element.id == id);
  }

  Future<void> inisialData() async {
    _allLeave = [];
    Uri url = Uri.parse(
        // '$urlMaster/leave.json?auth=$token&orderBy="userId"&equalTo="$userId"'
        '$urlMaster/details');

    try {
      var response = await http.get(url);
      var responseData = json.decode(response.body);
      print(responseData['data']['type_ijin']);

      if (response.statusCode >= 300 && response.statusCode < 200) {
        throw (response.statusCode);
      } else {
        var data = json.decode(response.body) as Map<String, dynamic>;
        if (data != null) {
          // print(data['data']);
          data.forEach(
            (key, value) {
              LeaveModel prod = LeaveModel(
                id: key,
                // type_ijin: value[0]['type_ijin'],
                // leave_reason: value[0]["reason_leave"],
                // id_peminta: value[0]["nama_peminta"],
                // start_date: value[0]["start_date"],
                // createdAt:
                //     DateFormat("yyyy-mm-dd hh:mm:ss").parse(value["createdAt"]),
                // updatedAt:
                //     DateFormat("yyyy-mm-dd hh:mm:ss").parse(value["updatedAt"]),
              );
              _allLeave.add(prod);
            },
          );
        }
      }
    } catch (err) {
      throw (err);
    }
  }
}
