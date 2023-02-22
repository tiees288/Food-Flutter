import 'package:flutter/material.dart';
import '../Widgets/NumberPad.dart';

class PasscodeScene extends StatefulWidget {
  const PasscodeScene({super.key});

  @override
  State<PasscodeScene> createState() => _PasscodeSceneState();
}

class _PasscodeSceneState extends State<PasscodeScene> {
  GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  TextEditingController PassTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    PassTextController.addListener(() {
      if (PassTextController.text.length == 6) {
        print('Passcode: ${PassTextController.text}');
        // Navigator.pushNamed(context, '/home');
      }
    });

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2D2D2D),
          elevation: 0,
        ),
        backgroundColor: Color(0xFF2D2D2D),
        body: Container(
          child: Form(
              key: _FormKey,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      'Enter Passcode',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  PassCodeLength(
                    controller: PassTextController,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      NumberPad(number: 1, controller: PassTextController),
                      NumberPad(number: 2, controller: PassTextController),
                      NumberPad(number: 3, controller: PassTextController),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      NumberPad(number: 4, controller: PassTextController),
                      NumberPad(number: 5, controller: PassTextController),
                      NumberPad(number: 6, controller: PassTextController),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      NumberPad(number: 7, controller: PassTextController),
                      NumberPad(number: 8, controller: PassTextController),
                      NumberPad(number: 9, controller: PassTextController),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ResetPad(
                        controller: PassTextController,
                      ),
                      NumberPad(number: 0, controller: PassTextController),
                      FaceBioMetricsPad()
                    ],
                  ),
                ],
              )),
        ));
  }
}
