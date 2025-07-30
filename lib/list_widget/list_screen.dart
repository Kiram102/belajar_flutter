import 'package:flutter/material.dart';
import 'package:latihan_flutter/list_widget/detail_screen.dart';
import 'package:latihan_flutter/main_layout.dart';

class ArticleListScreen extends StatelessWidget {
   ArticleListScreen({super.key});

  final List<Map<String,String>> articles = [
    {
      'title': "Flutter Dasar",
      'description': "Belajar Flutter",
      'image': 'https://royalcdkeys.com/cdn/shop/articles/hq720-5.jpg?v=1743758111'
    },
    {
      'title': "Mommy",
      'description': "Ingfo paha mommy, siap tampung bosku",
      'image': 'https://static0.gamerantimages.com/wordpress/wp-content/uploads/wm/2025/04/marvel-rivals-season-2-who-is-emma-frost.jpg?q=70&fit=crop&w=1140&h=&dpr=1'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Article',
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
              MaterialPageRoute(
                builder: (context) => ArticleDetailScreen(data:article),
              ),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black12,blurRadius: 6)
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(article['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(article["title"]!,
                          style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold
                          ),
                          ),
                          const SizedBox(height: 5),
                          Text(article['description']!,
                          style: const TextStyle(fontSize: 13)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}