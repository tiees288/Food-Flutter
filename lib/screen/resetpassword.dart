import 'package:flutter/material.dart';
import 'package:helloapp/Widgets/Button/ButtonRed.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class ResetPasswordScene extends StatefulWidget {
  const ResetPasswordScene({super.key});

  @override
  State<ResetPasswordScene> createState() => _ResetPasswordSceneState();
}

class _ResetPasswordSceneState extends State<ResetPasswordScene> {
  GlobalKey _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Colors.blue.shade800,
        centerTitle: false,
        title: const Text('ตั้งค่ารหัสผ่าน'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        child: Column(
          children: [
            Form(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Row(children: [
                    // Text('*', style: TextStyle(color: Colors.red)),
                    Text(
                      'รหัสผ่าน',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: TextFormField(
                    controller: _passwordController,
                    // validator: PasswordShema,
                    // onChanged: ((value) => _validate()),
                    obscureText: true,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.3),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      // hintText: 'Password',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Row(children: [
                    // Text('*', style: TextStyle(color: Colors.red)),
                    Text(
                      'ยืนยันรหัสผ่าน',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: TextFormField(
                    controller: _passwordController,
                    // validator: PasswordShema,
                    // onChanged: ((value) => _validate()),
                    obscureText: true,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      focusColor: Colors.grey,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.3),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      // hintText: 'Password',
                    ),
                  ),
                ),
                ButtonRed(onPressed: () {}, text: "ยืนยัน")
              ],
            ))
          ],
        ),
      ),
    );
  }
}
