import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  final Widget? child;
  const MainContainer({super.key, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.5,
            blurRadius: 1.5,
            offset: Offset(0, 2), // changes position of shadow
          )
        ],
      ),
      child: child,
    );
  }
}
