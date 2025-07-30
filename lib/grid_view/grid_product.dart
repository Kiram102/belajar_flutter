import 'package:flutter/material.dart';
import 'package:latihan_flutter/main_layout.dart';

class GridProductPage extends StatelessWidget {
 const GridProductPage({super.key});

  final List<Map<String, String>> products = const [
    {
      'name': 'Kaos Flutter',
      'price': 'Rp120.000',
      'image': 'https://static0.gamerantimages.com/wordpress/wp-content/uploads/wm/2025/04/marvel-rivals-season-2-who-is-emma-frost.jpg?q=70&fit=crop&w=1140&h=&dpr=1'
    },
    {
      'name': 'Hoodie Dart',
      'price': 'Rp220.000',
      'image': 'https://static0.gamerantimages.com/wordpress/wp-content/uploads/wm/2025/04/marvel-rivals-season-2-who-is-emma-frost.jpg?q=70&fit=crop&w=1140&h=&dpr=1'
    },
    {
      'name': 'Sticker UI',
      'price': 'Rp20.000',
      'image': 'https://static0.gamerantimages.com/wordpress/wp-content/uploads/wm/2025/04/marvel-rivals-season-2-who-is-emma-frost.jpg?q=70&fit=crop&w=1140&h=&dpr=1'
    },
    {
      'name': 'Totebag Dev',
      'price': 'Rp80.000',
      'image': 'https://static0.gamerantimages.com/wordpress/wp-content/uploads/wm/2025/04/marvel-rivals-season-2-who-is-emma-frost.jpg?q=70&fit=crop&w=1140&h=&dpr=1'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Grid Product',
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index){
            final product = products[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[100],
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 6)
                ],
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child:  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(product['image']!, fit: BoxFit.cover,),
                    ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product['name']!,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text(product['price']!,
                          style: TextStyle(
                            color: Colors.white,fontSize: 12,
                          ),),
                        ],
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}