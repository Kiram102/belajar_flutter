import 'package:flutter/material.dart';
import 'package:latihan_flutter/main_layout.dart';

class GridOne extends StatelessWidget {
  const GridOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Grid Satu',
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(color: Colors.purple, width: 200, child: Text('1')),
          Container(color: Colors.red, width: 200, child: Text('2')),
          Container(color: Colors.yellow, width: 200, child: Text('3')),
          Container(color: Colors.pink, width: 200, child: Text('4')),
        ],
      ),
    );
  }
}