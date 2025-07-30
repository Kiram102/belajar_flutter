import 'package:flutter/material.dart';
import 'package:latihan_flutter/main_layout.dart';

class WisataDetail extends StatelessWidget {
 final Map<String, String> data;
  
  const WisataDetail({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: data['title']!,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                data['image']!,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, StackTrace) {
                  return Container(
                    height: 250,
                    color: Colors.grey[300],
                    child: Icon(
                      Icons.image_not_supported,
                      size: 100,
                      color: Colors.grey[600],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.star,color: Colors.orange,size: 24,),
                const SizedBox(width: 8,),
                Text(
                  data['rating']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8,),
                Text(
                  '(${(double.parse(data['rating']!) * 1234).toInt()} reviews)',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
             const SizedBox(height: 15),
             Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.location_on,color: Colors.red,size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    data['location']!,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
             ),
              const SizedBox(height: 20),
              Text(
                'Deskripsi',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                data['description']!,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 30),
          ],
        ),
       

      ),
    );
  }
}