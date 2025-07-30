import 'package:flutter/material.dart';
import 'package:latihan_flutter/main_layout.dart';

class ListTwo extends StatelessWidget {
   ListTwo({super.key});

  final List<Map<String,dynamic>> listData = [
    {'color':Colors.red, 'partai' : 'Partai Banteng'},
    {'color':Colors.purple, 'partai' : 'Partai Nasdem'},
    {'color':Colors.yellow, 'partai' : 'Partai Furry'},
    {'color':Colors.green, 'partai' : 'Partai Femboy'},
    {'color':Colors.pink, 'partai' : 'Partai Gooning'},
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'list dua',
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, i) {
          final data = listData[i];
          return Container(
            color: data['color'],
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Center(child: Text(data['partai'])),
          );
        },
          scrollDirection: Axis.horizontal,
      ),
    );
  }
}