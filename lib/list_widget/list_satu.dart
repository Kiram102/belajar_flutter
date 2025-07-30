import 'package:flutter/material.dart';
import 'package:latihan_flutter/main_layout.dart';

class ListOne extends StatelessWidget {
  const ListOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'list basic',
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: Text('Text' + index.toString()),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}