import 'package:flutter/material.dart';

class FoodCart extends StatefulWidget {
  const FoodCart({super.key});

  @override
  State<FoodCart> createState() => _FoodListState();
}

class _FoodListState extends State<FoodCart> {
  int totalData = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 10,
          bottom: 5,
          child: FloatingActionButton(
            heroTag: 'cart',
            backgroundColor: Colors.white,
            onPressed: () {
              setState(() {
                totalData = totalData + 1;
              });
            },
            child: Icon(
              Icons.shopping_cart,
              color: Colors.grey.shade500,
            ),
          ),
        ),
        Positioned(
            width: 22,
            height: 22,
            right: 5,
            bottom: 45,
            child: FloatingActionButton(
              heroTag: 'cart1',
              backgroundColor: Colors.green.shade500,
              child: Text("${totalData}"),
              onPressed: () => {},
            ))
      ],
    );
  }
}
