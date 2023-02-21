import 'package:flutter/material.dart';

class AlertNotify extends StatefulWidget {
  final Widget? title;
  final Widget content;

  const AlertNotify({
    super.key,
    this.title,
    required this.content,
  });

  @override
  State<AlertNotify> createState() => _AlertNotifyState();
}

class _AlertNotifyState extends State<AlertNotify> {
  @override
  Widget build(BuildContext context) {
    Widget? title = widget.title;
    Widget content = widget.content;
    Color buttonColor = Colors.red;

    return AlertDialog(
      title: title,
      elevation: 5.0,
      insetPadding: EdgeInsets.all(8.0),
      contentPadding:
          EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 20),
      buttonPadding: EdgeInsets.only(top: 20, bottom: 300),
      actionsAlignment: MainAxisAlignment.center,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      content: Container(
        height: 50,
        width: MediaQuery.of(context).size.width - 100,
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        child: content,
      ),
      actions: [
        Container(
          width: MediaQuery.of(context).size.width - 100,
          margin: EdgeInsets.only(bottom: 20.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                backgroundColor: buttonColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('ตกลง'),
            ),
          ),
        )
      ],
    );
  }
}
