import 'package:flutter/material.dart';
import 'package:helloapp/Widgets/Button/ButtonRed.dart';

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
        ButtonRed(
          text: 'ตกลง',
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
