import 'package:flutter/material.dart';
import 'package:latihan_flutter/main_layout.dart';

class StackThree extends StatelessWidget {
  const StackThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'image',
      body: Stack(
        children: [
          Image.network(
            'https://gdm-universal-media.b-cdn.net/siege/95638a64e7201fb4a9d08889bda1fcd5c80c5e3d-1920x1080-1.jpg?width=810'
          ),
          Positioned(
            bottom: 10,
            top: 10,
            child: Text('Aduhai'),
          )
        ],
      ),
    );
  }
}