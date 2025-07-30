import 'package:flutter/material.dart';
import 'package:latihan_flutter/main_layout.dart';
import 'package:latihan_flutter/tugas_30_juli/wisata_detail.dart';

class WisataList extends StatelessWidget {
  final Map<String,dynamic> daerahData;

  const WisataList({super.key, required this.daerahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> WisataList = List<Map<String,String>>.from(daerahData['wisataList']);

    return MainLayout(
      title: 'Wisata ${daerahData['title']}',
      body: ListView.builder(
        itemCount: WisataList.length,
        itemBuilder: (context, index) {
          final wisata = WisataList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => WisataDetail(data: wisata)),
              );
            },
            child: Padding(
               padding: const EdgeInsets.all(16.0),
               child: Container(
                margin: const EdgeInsets.all(10),
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 6)
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
                          image: NetworkImage(wisata['image']!),
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
                            Text(
                              wisata['title']!,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              wisata['description']!,
                              style: const TextStyle(fontSize: 13),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.orange, size: 16,),
                                const SizedBox(width: 4),
                                Text(
                                wisata['rating']!,
                                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
               ),
            ),
          );
        },
      ),
    );
  }
}