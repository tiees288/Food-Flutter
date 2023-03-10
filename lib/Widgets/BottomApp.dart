import 'package:flutter/material.dart';
import '../screen/accounts.dart';
import '../main.dart';

class BottomApp extends StatelessWidget {
  const BottomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 1.0,
      color: Colors.grey.shade50,
      child: Container(
        height: 40,
        child: Padding(
          padding: EdgeInsets.only(top: 6, bottom: 12),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 50,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Container(
                      width: 50,
                      // heigh/t: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(children: [
                        Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(fontSize: 12),
                        )
                      ]))),
              InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Search()));
                    print("HOme");
                  },
                  child: Container(
                      width: 50,
                      // heigh/t: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(children: [
                        Icon(
                          Icons.history,
                          color: Colors.black,
                        ),
                        Text(
                          "Orders",
                          style: TextStyle(fontSize: 12),
                        )
                      ]))),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/accounts',
                    );
                  },
                  child: Container(
                      width: 55,
                      // heigh/t: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(children: [
                        Icon(
                          Icons.account_circle,
                          color: Colors.black,
                        ),
                        Text(
                          "Accounts",
                          style: TextStyle(fontSize: 12),
                        )
                      ])))
            ],
          ),
        ),
      ),
    );
  }
}
