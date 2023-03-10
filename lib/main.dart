// Libs
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './ApiHelpers/Food.dart';
import 'package:flutter/cupertino.dart';
import './screen/accounts.dart';
import './screen/home.dart';
// Widgets
import 'Widgets/BottomApp.dart';

main() {
  runApp(const MyAppWid());
}

class MyAppWid extends StatelessWidget {
  const MyAppWid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          case '/accounts':
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  AccountScreen(),
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
    );
  }
}
