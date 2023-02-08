import 'package:flutter/material.dart';
import '../Widgets/BottomApp.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: const Text(
          "Accounts",
          style: TextStyle(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey.shade50,
      ),
      bottomNavigationBar: BottomApp(),
      body: Center(
        child: Text("Account"),
      ),
    );
  }
}
