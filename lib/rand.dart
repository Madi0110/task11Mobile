import 'dart:math';
import 'package:flutter/material.dart';

class RandomButtonWidget extends StatefulWidget {
  @override
  _RandomButtonWidgetState createState() => _RandomButtonWidgetState();
}

class _RandomButtonWidgetState extends State<RandomButtonWidget> {
  Color color = Colors.green;

  @Override
  Widget build(BuildContext context) => Column(
    children: [
      Container(
        color: Colors.black.withOpacity(0.1),
        width: 200,
        height: 200,
        child: Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInBack,
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: color,
            ),
          ),
        ),
      ),
      const SizedBox(height: 16),

      RaisedButton(
        shape: StadiumBorder(),
        color: Colors.blue,
        onPressed: () {
          final random = Random();

          final blue = random.nextInt(255);
          final red = random.nextInt(255);
          final green = random.nextInt(255);
          final color = Color.fromBRGO(blue, red, green, 1);

          setState(() {
            this.color = color;
          });
        },
      ),
    ],
  );

}