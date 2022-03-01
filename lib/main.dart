import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobileApp_ppm/constans.dart';
import 'package:mobileApp_ppm/views/auth/change_pass.dart';
import 'package:mobileApp_ppm/views/auth/loginpage.dart';
import 'package:mobileApp_ppm/views/auth/loginpage.dart';
import 'package:mobileApp_ppm/views/auth/setting.dart';
import 'package:mobileApp_ppm/views/dashboard/dashboard.dart';
import 'package:mobileApp_ppm/views/list_inquiry/history_request.dart';
import 'package:mobileApp_ppm/views/payslip/my_payslip.dart';
import 'package:mobileApp_ppm/views/request_form/create_form_leave.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ppm',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
          // display1: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          button: TextStyle(color: kPrimaryColor),
          // headline:
          //     TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.2),
            ),
          ),
        ),
      ),
      initialRoute: 'login',
      routes: {
        'login': (context) => SigninPage(),
        'leave/add': (context) => FormRequest(),
        // 'leave/view': (context) => SigninPage(),
        'request/index': (context) => ListInquiry(),
        'mypayslip': (context) => UpdateStatusPage(),
        'setting': (context) => SettingPage(),
        'dashboard': (context) => Dashboard(),
        'changepassword': (context) => ChangePasswordPage(),
      },
    );
  }
}
