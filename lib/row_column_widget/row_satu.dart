import 'package:flutter/material.dart';
import 'package:latihan_flutter/main_layout.dart';

class RowOne extends StatelessWidget {
  const RowOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'row satu',
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [

          Text('Widget 1'),
          Text('Widget 2'),
          Text('Widget 3'),

          Column(children: [
      
          Text('Widget 1'),
          Text('Widget 2'),
          Text('Widget 3'),
          
          ],)
        ],
      ),
    );
  }
}