import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

// import '../models/product.dart';
import '../models/leave_model.dart';

class Leaves with ChangeNotifier {
  // //start
  // Map<String, dynamic> _map = {};
  // bool _error = false;
  // String _errorMessage = '';
  // Future<void> get fecthData async {
  //   final response = await get(
  //     Uri.parse('urlmaster'),
  //   );
  // }

  // //end

  String token, userId;

  void updateData(tokenData, uid) {
    token = tokenData;
    userId = uid;
    notifyListeners();
  }

  String urlMaster = "https://ppm.engineeringlife.id/api";

  List<LeaveModel> _allLeave = [];

  List<LeaveModel> get allLeave => _allLeave;

// class untuk add request
  Future<void> addLeave(String type_ijin, String nama_pengganti,
      String reason_leave, String start_date, String to_date) async {
    Uri url = Uri.parse("$urlMaster/leave/add");

    // Uri url = Uri.parse("$urlMaster/leave/add?auth=$token");
    // DateTime dateNow = DateTime.now();
    try {
      var response = await http.post(url, body: {
        'id': userId,
        'type_ijin': type_ijin,
        'id_pengganti': nama_pengganti,
        'leave_reason': reason_leave,
        'start_date': start_date,
        'end_date': to_date
      }, headers: {
        'Authorization': 'Bearer $token'
      }
          // headers: {'Accept': 'application/json'},
          );
      var responseData = json.decode(response.body);
      // print(token);
      // print(response.statusCode);

      if (response.statusCode >= 300 && response.statusCode < 200) {
        throw (response.statusCode);
      } else {
        // print(json.decode(response.body)['data']['type_ijin']);
        LeaveModel data = LeaveModel(
          type_ijin: json.decode(response.body)['data']['type_ijin'],
          id_peminta: json.decode(response.body)['data']['type_ijin'],
          leave_reason: json.decode(response.body)['data']['type_ijin'],
          start_date: json.decode(response.body)['data']['type_ijin'],
          end_date: json.decode(response.body)['data']['type_ijin'],
        );

        _allLeave.add(data);
        notifyListeners();
      }
    } catch (pesan) {
      throw (pesan);
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
    // List<LeaveModel> _allLeave = [];
    Uri url = Uri.parse('$urlMaster/details');

    try {
      // var response =
      //     await http.get(url, headers: {'Authorization': 'Bearer $token'});
      // var test = (json.decode(response.body))["data"];
      var request = http.Request(
          'GET', Uri.parse('https://ppm.engineeringlife.id/api/details'));

      http.StreamedResponse response = await request.send();

      if (response.statusCode >= 300 && response.statusCode < 200) {
        throw (response.statusCode);
      } else {
        if (response.statusCode == 200) {
          var rawData = await response.stream.bytesToString();
          List<dynamic> data = jsonDecode(rawData)["data"];
          data.forEach((element) {
            // print("ini");
            // print(element["peminta"]["name"]);
            LeaveModel prod = LeaveModel.fromJson(element);
            // LeaveModel model = LeaveModel.fromJson(element);
            _allLeave.add(prod);
          });
          return _allLeave;
        } else {
          print(response.reasonPhrase);
          return [];
        }
      }
    } catch (err) {
      throw (err);
    }
  }
}
