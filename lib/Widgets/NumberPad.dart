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
