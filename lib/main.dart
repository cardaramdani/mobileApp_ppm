// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:mobileApp_ppm/constans.dart';
// import 'package:mobileApp_ppm/views/auth/change_pass.dart';
// import 'package:mobileApp_ppm/views/auth/loginpage.dart';
// import 'package:mobileApp_ppm/views/auth/loginpage.dart';
// import 'package:mobileApp_ppm/views/auth/setting.dart';
// import 'package:mobileApp_ppm/views/dashboard/dashboard.dart';
// import 'package:mobileApp_ppm/views/list_inquiry/history_request.dart';
// import 'package:mobileApp_ppm/views/payslip/my_payslip.dart';
// import 'package:mobileApp_ppm/views/request_form/create_form_leave.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//   ]);
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'ppm',
//       theme: ThemeData(
//         brightness: Brightness.dark,
//         primaryColor: kPrimaryColor,
//         scaffoldBackgroundColor: kBackgroundColor,
//         textTheme: TextTheme(
//           // display1: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           button: TextStyle(color: kPrimaryColor),
//           // headline:
//           //     TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
//         ),
//         inputDecorationTheme: InputDecorationTheme(
//           enabledBorder: UnderlineInputBorder(
//             borderSide: BorderSide(
//               color: Colors.white.withOpacity(.2),
//             ),
//           ),
//         ),
//       ),
//       initialRoute: 'login',
//       routes: {
//         'login': (context) => SigninPage(),
//         'leave/add': (context) => FormRequest(),
//         // 'leave/view': (context) => SigninPage(),
//         'request/index': (context) => ListInquiry(),
//         'mypayslip': (context) => UpdateStatusPage(),
//         'setting': (context) => SettingPage(),
//         'dashboard': (context) => Dashboard(),
//         'changepassword': (context) => ChangePasswordPage(),
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:mobileApp_ppm/views/request_form/add_leave.dart';
import 'package:provider/provider.dart';

import './providers/products.dart';
import './providers/auth.dart';
import './providers/leaves.dart';

// import './pages/home_page.dart';
import './pages/auth_page.dart';
// import './pages/add_product_page.dart';
import './pages/edit_product_page.dart';
import './views/dashboard/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //list provider yg hrus di auth
        ChangeNotifierProvider(
          create: (ctx) => Auth(),
        ),
        ChangeNotifierProxyProvider<Auth, Products>(
          create: (context) => Products(),
          update: (context, auth, products) =>
              products..updateData(auth.token, auth.userId),
        ),
        ChangeNotifierProxyProvider<Auth, Leaves>(
          create: (context) => Leaves(),
          update: (context, auth, leaves) =>
              leaves..updateData(auth.token, auth.userId),
        ),
      ],
      builder: (context, child) => Consumer<Auth>(
        builder: (context, auth, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: auth.isAuth ? Dashboard() : LoginPage(),
          routes: {
            //definisikan rute dsni utuk pemanggilan rute
            // AddProductPage.route: (ctx) => AddProductPage(),
            AddLeave.route: (ctx) => AddLeave(),
            EditProductPage.route: (ctx) => EditProductPage(),
          },
        ),
      ),
    );
  }
}
