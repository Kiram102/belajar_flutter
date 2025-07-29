import 'package:flutter/material.dart';
import 'package:latihan_flutter/main_layout.dart';

class StackOne extends StatelessWidget {
  const StackOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Stack',
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(width: 200, height: 200, color: Colors.red,),
          Container(width: 150, height: 100, color: Colors.blue,),
          Container(width: 100, height: 50, color: Colors.pink,),
        ],
      ),
    );
  }
}