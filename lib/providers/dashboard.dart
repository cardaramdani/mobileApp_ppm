// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:intl/intl.dart';

// import '../models/product.dart';
// import '../models/leave_model.dart';

// class Dashboard with ChangeNotifier {
//   String token, userId;

//   void updateData(tokenData, uid) {
//     token = tokenData;
//     userId = uid;
//     notifyListeners();
//   }

//   String urlMaster = "https://ppm.engineeringlife.id/";
//   List<LeaveModel> _allRequest = [];

//   List<LeaveModel> get allRequest => _allRequest;
// //class untuk add request
//   Future<void> addRequest(String type_ijin, String nama_peminta,
//       String reason_leave, String start_date, String to_date) async {
//     Uri url = Uri.parse("$urlMaster/leave/add?auth=$token");
//     // DateTime dateNow = DateTime.now();
//     try {
//       var response = await http.post(url, body: {
//         'type_ijin': type_ijin,
//         'nama_peminta': nama_peminta,
//         'reason_leave': reason_leave,
//         'start_date': start_date,
//         'to_date': to_date
//       }, headers: {
//         'Accept': 'application/json'
//       });

//       if (response.statusCode > 300 || response.statusCode < 200) {
//         throw (response.statusCode);
//       } else {
//         LeaveModel data = LeaveModel(
//           type_ijin: json.decode(response.body)['type_ijin'].toString(),
//           // id_peminta: nama_peminta,
//           leave_reason: reason_leave,
//           // start_date: start_date,
//           // end_date: to_date,
//         );

//         _allRequest.add(data);
//         notifyListeners();
//       }
//     } catch (err) {
//       throw (err);
//     }
//   }

// //edit request
//   void editRequest(String id, String type_ijin, String nama_peminta,
//       String reason_leave, String start_date, String to_date) async {
//     Uri url = Uri.parse("$urlMaster/leave/edit/$id.json?auth=$token");
//     DateTime date = DateTime.now();
//     try {
//       var response = await http.patch(
//         url,
//         body: json.encode({
//           'type_ijin': type_ijin,
//           'nama_peminta': nama_peminta,
//           'reason_leave': reason_leave,
//           'start_date': start_date,
//           'to_date': to_date
//         }),
//       );

//       if (response.statusCode > 300 || response.statusCode < 200) {
//         throw (response.statusCode);
//       } else {
//         LeaveModel edit = _allRequest.firstWhere((element) => element.id == id);
//         edit.type_ijin = type_ijin;
//         edit.leave_reason = reason_leave;
//         // edit.start_date = start_date;
//         // edit.end_date = to_date;
//         notifyListeners();
//       }
//     } catch (err) {
//       throw (err);
//     }
//   }

// //delet
//   void deleteProduct(String id) async {
//     Uri url = Uri.parse("$urlMaster/leave/delete/$id.json?auth=$token");

//     try {
//       var response = await http.delete(url);

//       if (response.statusCode > 300 || response.statusCode < 200) {
//         throw (response.statusCode);
//       } else {
//         _allRequest.removeWhere((element) => element.id == id);
//         notifyListeners();
//       }
//     } catch (err) {
//       throw (err);
//     }
//   }

//   LeaveModel selectById(String id) {
//     return _allRequest.firstWhere((element) => element.id == id);
//   }

//   Future<void> inisialData() async {
//     _allRequest = [];
//     Uri url = Uri.parse(
//         '$urlMaster/leave.json?auth=$token&orderBy="userId"&equalTo="$userId"');

//     try {
//       var response = await http.get(url);

//       print(response.statusCode);

//       if (response.statusCode >= 300 && response.statusCode < 200) {
//         throw (response.statusCode);
//       } else {
//         var data = json.decode(response.body) as Map<String, dynamic>;
//         if (data != null) {
//           data.forEach(
//             (key, value) {
//               LeaveModel prod = LeaveModel(
//                 id: value,
//                 type_ijin: value["type_ijin"],
//                 leave_reason: value["reason_leave"],
//                 // id_peminta: value["nama_peminta"],
//                 // start_date: value["start_date"],
//                 // createdAt:
//                 //     DateFormat("yyyy-mm-dd hh:mm:ss").parse(value["createdAt"]),
//                 // updatedAt:
//                 //     DateFormat("yyyy-mm-dd hh:mm:ss").parse(value["updatedAt"]),
//               );
//               _allRequest.add(prod);
//             },
//           );
//         }
//       }
//     } catch (err) {
//       throw (err);
//     }
//   }
// }
