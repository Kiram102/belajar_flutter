import 'package:flutter/material.dart';
import 'package:latihan_flutter/main_layout.dart';

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan Flutter',
      body: Center(
        child: Container(
           height: 100,
          width: double.infinity,
          color: Colors.grey,
          padding: EdgeInsets.all(10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.star,size: 40,color: Colors.yellow,),
                  Text('kiki', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.star,size: 40,color: Colors.yellow,),
                  Text('kiki', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.star,size: 40,color: Colors.yellow,),
                  Text('kiki', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.star,size: 40,color: Colors.yellow,),
                  Text('kiki', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}