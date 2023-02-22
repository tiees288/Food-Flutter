import 'package:flutter/material.dart';
import 'package:helloapp/Widgets/Button/ButtonRed.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  OtpFieldController _otpController = OtpFieldController();
  bool isOTPError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Colors.blue.shade800,
        title: const Text('โปรดป้อน OTP ที่ได้รับ'),
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
            ButtonRed(
                text: "ยืนยันรหัส",
                onPressed: () {
                  print('ยืนยันรหัส');
                  setState(() {
                    isOTPError = !isOTPError;
                  });
                })
          ],
        ),
      ),
    );
  }
}
