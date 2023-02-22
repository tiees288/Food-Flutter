// Libs
import 'dart:developer';

import 'package:helloapp/screen/otp.dart';
import 'package:helloapp/screen/passcode.dart';
import 'package:helloapp/screen/resetpassword.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloapp/screen/login.dart';
import './ApiHelpers/Food.dart';
import 'package:flutter/cupertino.dart';
// Screens
import './screen/accounts.dart';
import './screen/home.dart';
import './screen/login.dart';
// Widgets
import 'Widgets/BottomApp.dart';
// Providers Models
import 'Providers/FoodListData.dart';

main() {
  runApp(const MyAppWid());
}

class MyAppWid extends StatelessWidget {
  const MyAppWid({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => FoodlistProvider()),
        ],
        child: MaterialApp(
          title: 'Main',
          initialRoute: '/',
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case '/':
                return PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      HomeScreen(),
                  settings: settings,
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                );
              case '/otp':
                return PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      OTPScreen(),
                  settings: settings,
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                );
              case '/resetpassword':
                return PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      ResetPasswordScene(),
                  settings: settings,
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                );
              case '/accounts':
                return PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      AccountScreen(),
                  settings: settings,
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                );
              case "/login":
                return PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      PasscodeScene(),
                  settings: settings,
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                );
              default:
                return MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                  settings: settings,
                  fullscreenDialog: true,
                );
            }
          },
          // routes: {
          //   '/': (context) => HomeScreen(),
          //   '/accounts': (context) => AccountScreen(),
          // },
          // home: HomeScreen()
          // theme: ThemeData(primarySwatch: Colors.red.shade500),
        ));
  }
}
