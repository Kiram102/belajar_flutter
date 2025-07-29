import 'package:flutter/material.dart';
import 'package:latihan_flutter/main_layout.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'kombinasi widget',
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.black,),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Container(
                
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage('https://gdm-universal-media.b-cdn.net/siege/95638a64e7201fb4a9d08889bda1fcd5c80c5e3d-1920x1080-1.jpg?width=810'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                   color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),

              Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Judul',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text('Lorem Ipsum',
                        style: TextStyle(
                          color: Colors.white70,
                        ),),
                      ],
                    ),
                    Icon(Icons.play_circle_fill, color: Colors.white ,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}