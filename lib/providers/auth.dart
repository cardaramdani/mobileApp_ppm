import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  Timer _authTimer;
  String _idToken, userId, username;
  DateTime _expiryDate;

  String _tempidToken, tempuserId, tempusername;
  DateTime _tempexpiryDate;

  void tempData() {
    _idToken = _tempidToken;
    userId = tempuserId;
    username = tempusername;
    _expiryDate = _tempexpiryDate;
    notifyListeners();
  }

  bool get isAuth {
    //ini jika login berhasil return token
    return token != null;
  }

  String get token {
    if (_idToken != null) {
      return _idToken;
    } else {
      return null;
    }
  }

  Future<void> signup(String email, String password) async {
    Uri url = Uri.parse("https://ppm.engineeringlife.id/api/register");

    try {
      var response = await http.post(url,
          body: {'email': email, 'password': password},
          headers: {'Accept': 'application/json'});

      var responseData = json.decode(response.body);
//jika error tampilkan pesan error dari api
      if (responseData['error'] != null) {
        throw responseData['pesan'];
      }
      _tempidToken = responseData['token'];
      tempuserId = responseData['data']['id'];
      //disini harusnya timing expired dari api
      _tempexpiryDate = DateTime.now().add(
        Duration(
          seconds: 2000,
        ),
      );
      _autologout();
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

//start class untuk login
  Future<void> login(String email, String password) async {
    Uri url = Uri.parse("https://ppm.engineeringlife.id/api/login");

    try {
      var response = await http.post(url,
          body: {'email': email, 'password': password},
          headers: {'Accept': 'application/json'});

      var responseData = json.decode(response.body);

      //jika error tampilkan pesan error dari api
      if (responseData['error'] != null) {
        throw responseData['pesan'];
      }
      _tempidToken = responseData['token'];
      tempuserId = responseData['data']['id'].toString();
      tempusername = responseData['data']['name'] +
          ' ' +
          responseData['data']['last_name'];
      print(tempusername);
      //disini harusnya timing expired dari api
      _tempexpiryDate = DateTime.now().add(
        Duration(
          seconds: 2000,
        ),
      );

      _autologout();
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
//end class untuk login

  void logout() {
    _idToken = null;
    userId = null;
    _expiryDate = null;
    if (_authTimer != null) {
      _authTimer.cancel();
      _authTimer = null;
    }

    notifyListeners();
  }

  void _autologout() {
    if (_authTimer != null) {
      _authTimer.cancel();
    }
    final timeToExpiry = _tempexpiryDate.difference(DateTime.now()).inSeconds;
    // print(timeToExpiry);
    _authTimer = Timer(Duration(seconds: timeToExpiry), logout);
  }
}
