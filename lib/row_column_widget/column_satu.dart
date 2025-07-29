import 'package:flutter/material.dart';
import 'package:latihan_flutter/main_layout.dart';

class ColumnOne extends StatelessWidget {
  const ColumnOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'column satu',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Column 1'),
          Text('Column 2'),
          Text('Column 3'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          Text('Row 1'),
          Text('Row 2'),
          Text('Row 3'),
            ],
          ),
        ],
      ),
    );
  }
}