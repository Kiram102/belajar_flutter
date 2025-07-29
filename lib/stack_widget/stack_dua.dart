import 'package:flutter/material.dart';

class StackTwo extends StatelessWidget {
  const StackTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: 200, height: 200, color: Colors.yellow),
        Positioned(
          top: 30,
          left: 30,
          child: Icon(Icons.star, color: Colors.red, size: 20),
        ),
        Positioned(
          top: 30,
          left: 145,
          child: Icon(Icons.star, color: Colors.red, size: 20),
        ),
        Positioned(
          top: 87.5,
          left: 87.5,
          child: Icon(Icons.star, color: Colors.red, size: 20),
        ),
        Positioned(
          top: 145,
          left: 30,
          child: Icon(Icons.star, color: Colors.red, size: 20),
        ),
        Positioned(
          top: 145,
          left: 145,
          child: Icon(Icons.star, color: Colors.red, size: 20),
        ),
      ],
    );
  }
}