import 'package:flutter/material.dart';
import 'package:latihan_flutter/container_widget/container_satu.dart';
import 'package:latihan_flutter/main_layout.dart';

class ContainerDua extends StatelessWidget {
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Container Dua",
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightBlue,
              Colors.redAccent,
              Colors.purpleAccent
            ], 
            begin: Alignment.bottomRight, 
            end: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContainerSatu()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
            ),
            child: Text('Pindah ke halaman satu',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}