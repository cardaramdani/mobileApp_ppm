import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:mobileApp_ppm/views/dashboard/dashboard.dart';
import 'package:provider/provider.dart';

import '../providers/auth.dart';

const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUserSignUp(LoginData data) {
    return Future.delayed(loginTime).then((_) async {
      try {
        await Provider.of<Auth>(context, listen: false)
            .signup(data.name, data.password);
      } catch (err) {
        // print(err);
        return err.toString();
      }
      return null;
    });
  }

  Future<String> _authUserLogin(LoginData data) {
    return Future.delayed(loginTime).then(
      (_) async {
        try {
          await Provider.of<Auth>(context, listen: false)
              .login(data.name, data.password);
        } catch (err) {
          return err.toString();
        }
        return null;
      },
    );
  }

  Future<String> _recoverPassword(String name) {
    // print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      // title: 'PUTRA PRATAMA MAHAKA',
      // logo: 'assets/images/ecorp-lightblue.png',
      onLogin: _authUserLogin,
      logo: "assets/images/logo-ppm.png",
      theme: LoginTheme(
        accentColor: Colors.red,
        pageColorLight: Colors.red,
        pageColorDark: Colors.white,
        primaryColor: Colors.red,
      ),
      onSignup: _authUserSignUp,
      onSubmitAnimationCompleted: () {
        // Navigator.of(context).pushReplacement(MaterialPageRoute(
        //   builder: (context) => Dashboard(),
        // ));
        Provider.of<Auth>(context, listen: false).tempData();
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
