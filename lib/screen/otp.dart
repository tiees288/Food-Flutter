import 'package:flutter/material.dart';
import 'package:helloapp/Widgets/Button/ButtonRed.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
// Countdown Timer
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late CountdownTimerController controllerTimerOTP;
  OtpFieldController _otpController = OtpFieldController();
  bool isOTPError = false;
  bool isAllowResendOTP = false;
  // Initial Endtime for OTP countdown.
  int ResendOTP_Time = DateTime.now().millisecondsSinceEpoch + 1000 * 60 * 5;

  @override
  void initState() {
    super.initState();
    controllerTimerOTP =
        CountdownTimerController(endTime: ResendOTP_Time, onEnd: onEndTimer);
  }

  void onEndTimer() {
    print('onEndTimer');
    setState(() {
      isAllowResendOTP = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Colors.blue.shade800,
        title: const Text('โปรดป้อน OTP ที่ได้รับ'),
        centerTitle: false,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 20, left: 25, right: 25),
              child: Text(
                'ระบบได้ส่งรหัสไปที่ 090 XXX 7422 โปรดใส่รหัส OTP เพื่อทำการยืนยัน',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            OTPTextField(
              controller: _otpController,
              length: 6,
              width: MediaQuery.of(context).size.width - 50,
              fieldWidth: 50,
              hasError: isOTPError,
              style: TextStyle(fontSize: 20),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              contentPadding: EdgeInsets.only(top: 20, bottom: 20),
              otpFieldStyle: OtpFieldStyle(
                backgroundColor: Colors.white,
                borderColor: Colors.grey.shade300,
                focusBorderColor: Colors.grey.shade300,
                disabledBorderColor: Colors.grey.shade300,
                enabledBorderColor: Colors.grey.shade300,
                errorBorderColor: Colors.red.shade500,
              ),
              outlineBorderRadius: 5,
              onChanged: (value) => {
                print("Changed: " + value),
              },
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 20),
              child: Text(
                  isOTPError ? 'รหัส OTP ไม่ถูกต้อง กรุณาลองใหม่อีกครั้ง' : '',
                  style: TextStyle(color: Colors.red)),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 10),
              child: CountdownTimer(
                controller: controllerTimerOTP,
                onEnd: onEndTimer,
                widgetBuilder:
                    (BuildContext context, CurrentRemainingTime? time) {
                  if (time == null) {
                    return Text("00:00",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.bold,
                        ));
                  } else {
                    return Text(
                      '${time.min?.toString().padLeft(2, '0') ?? '00'}:${time.sec?.toString().padLeft(2, '0') ?? '00'}',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }
                },
                endTime: ResendOTP_Time,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: isAllowResendOTP
                  ? InkWell(
                      onTap: () {
                        if (!isAllowResendOTP) return;
                        setState(() {
                          isAllowResendOTP = false;
                          ResendOTP_Time =
                              DateTime.now().millisecondsSinceEpoch +
                                  1000 * 60 * 5;
                          controllerTimerOTP =
                              CountdownTimerController(endTime: ResendOTP_Time);
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('ขอรหัส OTP ใหม่',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue.shade300,
                              )),
                        ],
                      ))
                  : Container(),
            ),
            ButtonRed(
                text: "ยืนยันรหัส",
                onPressed: () {
                  // setState(() {
                  //   isOTPError = !isOTPError;
                  // });
                  Navigator.pushReplacementNamed(context, '/resetpassword');
                })
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controllerTimerOTP.dispose();
    super.dispose();
  }
}
