import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import '../Widgets/BottomApp.dart';

// Alert
import '../Widgets/Alert/AlertNotify.dart';

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
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  // Form Validation Schema
  final EmailShema = ValidationBuilder(requiredMessage: "Please enter email")
      .email("Email format is incorrect")
      .required()
      .build();
  final PasswordShema =
      ValidationBuilder(requiredMessage: "Please enter password")
          .minLength(8, "Password must be at least 8 characters")
          .required()
          .build();
  // Form Controller
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();

  bool _validate() {
    return _formKey.currentState!.validate();
  }

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
                  controller: EmailController,
                  validator: EmailShema,
                  // readOnly: true,
                  // enabled: false,
                  // enableInteractiveSelection: false,
                  onChanged: ((value) => _validate()),
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    focusColor: Color(0xFFE0E0E0),
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
                  controller: PasswordController,
                  validator: PasswordShema,
                  onChanged: ((value) => _validate()),
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
                      String Email = EmailController.text;
                      String Password = PasswordController.text;
                      if (_validate()) {
                        print('Validate Success');
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertNotify(
                                  content: Column(
                                children: [
                                  Text('Validate Error'),
                                  Text('Please check your input'),
                                ],
                              ));
                            });
                      }
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
                    _formKey.currentState?.reset();
                    EmailController.clear();
                    PasswordController.clear();
                  },
                  child: Text('Cancel'),
                ),
              ])
            ],
          ),
        ));
  }
}
