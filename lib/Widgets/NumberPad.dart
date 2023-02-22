import 'package:flutter/material.dart';

class NumberPad extends StatefulWidget {
  final int number;
  final TextEditingController controller;

  const NumberPad({super.key, required this.number, required this.controller});

  @override
  State<NumberPad> createState() => _NumberPadState();
}

class _NumberPadState extends State<NumberPad> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print('Current: ${widget.controller.text}');
        if (widget.controller.text.toString().length < 6) {
          widget.controller.text =
              widget.controller.text + widget.number.toString();
        }
      },
      child: Container(
        alignment: Alignment.center,
        // padding: EdgeInsets.all(15),
        width: 70,
        height: 70,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          shape: BoxShape.circle,
        ),
        child: Text(
          widget.number.toString(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

class ResetPad extends StatefulWidget {
  final TextEditingController controller;

  const ResetPad({super.key, required this.controller});

  @override
  State<ResetPad> createState() => _ResetPadState();
}

class _ResetPadState extends State<ResetPad> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.controller.text = '';
      },
      child: Container(
        alignment: Alignment.center,
        width: 70,
        height: 70,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Text(
          "Reset",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class FaceBioMetricsPad extends StatefulWidget {
  const FaceBioMetricsPad({super.key});

  @override
  State<FaceBioMetricsPad> createState() => _FaceBioMetricsPadState();
}

class _FaceBioMetricsPadState extends State<FaceBioMetricsPad> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print(widget.number);
      },
      child: Container(
        alignment: Alignment.center,
        width: 70,
        height: 70,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Text(
          "Face ID",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class PassCodeLength extends StatefulWidget {
  final TextEditingController controller;

  const PassCodeLength({super.key, required this.controller});

  @override
  State<PassCodeLength> createState() => _PassCodeLengthState();
}

class _PassCodeLengthState extends State<PassCodeLength> {
  String passcode_no_input = '\u{25CB}';
  String passcode_input = '\u{25CF}';

  List<String> passcode = [
    '\u{25CB}',
    '\u{25CB}',
    '\u{25CB}',
    '\u{25CB}',
    '\u{25CB}',
    '\u{25CB}'
  ];

  // widget.controller.addListener(() {
  //   setState(() {
  //     passcode = widget.controller.text.split('');
  //   });
  // });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = widget.controller;

    widget.controller.addListener(() {
      setState(() {
        List<String> newPasscode = [];
        for (int i = 0; i < passcode.length; i++) {
          if (controller.text.split('').asMap().containsKey(i)) {
            newPasscode.add(passcode_input);
          } else {
            newPasscode.add(passcode_no_input);
          }
        }
        passcode = newPasscode;
      });
    });

    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Text(passcode[0],
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400)),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(passcode[1],
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400)),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(passcode[2],
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400)),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(passcode[3],
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400)),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(passcode[4],
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400)),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(passcode[5],
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400)),
          ),
        ],
      ),
    );
    ;
  }
}
