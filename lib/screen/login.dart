import 'package:flutter/material.dart';
import '../Widgets/BottomApp.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: const Text(
          "Login",
          style: TextStyle(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey.shade50,
      ),
      bottomNavigationBar: BottomApp(),
      body: Center(
        child: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  // final String message;
  // const LoginForm({super.key, required this.message});
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(30),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Icon(Icons.login, size: 60, color: Colors.black),
              Padding(
                padding: EdgeInsets.only(bottom: 4.0),
                child: Row(children: [
                  Text('*', style: TextStyle(color: Colors.red)),
                  Text(
                    'Email',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    focusColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    hintText: 'Email',
                    // icon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 4.0),
                child: Row(children: [
                  Text('*', style: TextStyle(color: Colors.red)),
                  Text(
                    'Password',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    focusColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    hintText: 'Password',
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, '/accounts');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Colors.black,
                    ),
                    child: Text('Login'),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    // Navigator.pushNamed(context, '/accounts');
                  },
                  child: Text('Cancel'),
                ),
              ])
            ],
          ),
        ));
  }
}
