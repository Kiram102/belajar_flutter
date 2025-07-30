import 'package:flutter/material.dart';
import 'package:latihan_flutter/main_layout.dart';
import 'package:latihan_flutter/tugas_30_juli/wisata_list.dart';

class HalamanUtama extends StatelessWidget {
  HalamanUtama({super.key});

   final List<Map<String,dynamic>> wisata = [
    {
      'title': "Bandung",
      'description': "Daerah Bandung Sekitar",
      'image': 'https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/zonabandung/200925155806-sejar.jpg',
      'wisataList': [
        {
          'title': 'Gedung Sate',
          'description': 'Gedung bersejarah yang menjadi ikon Kota Bandung dengan arsitektur colonial yang memukau.',
          'image': 'https://media.suara.com/pictures/653x366/2019/09/05/91494-gedung-sate.jpg',
          'location': 'Jl. Diponegoro No.22, Citarum, Kec. Bandung Wetan',
          'rating': '4.5'
        },
        {
          'title': 'Kawah Putih',
          'description': 'Danau kawah vulkanik dengan air berwarna putih kehijauan yang sangat indah.',
          'image': 'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2021/02/04/b9a441ee-a409-4897-b202-d20ddf1e558f-1612405052139-64d56f2449877ca5d518b0924113893f.jpg',
          'location': 'Ciwidey, Kabupaten Bandung',
          'rating': '4.7'
        },
        {
          'title': 'Tangkuban Perahu',
          'description': 'Gunung berapi aktif dengan bentuk menyerupai perahu terbalik yang penuh legenda.',
          'image': 'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2021/02/04/f12b8d46-03f2-42ad-a620-5e7ad748aec8-1612403518383-adf8c9df733bf89681751d3427f993d7.jpg',
          'location': 'Cikole, Lembang, Kabupaten Bandung Barat',
          'rating': '4.6'
        }
      ]
    },
    {
      'title': "Palembang",
      'description': "Daerah Palembang Sekitar",
      'image': 'https://img.antaranews.com/cache/1200x800/2025/04/05/1000556165.jpg.webp',
      'wisataList': [
        {
          'title': 'Jembatan Ampera',
          'description': 'Jembatan ikonik Palembang yang melintasi Sungai Musi dengan pemandangan spektakuler.',
          'image': 'https://wonderfulimage.s3-id-jkt-1.kilatstorage.id/1701852720-42dc2d82-a28e-4c71-9031-24f601893bf1-40730-0000049d09df54ae-jpg-medium.jpg',
          'location': 'Sungai Musi, Palembang',
          'rating': '4.8'
        },
        {
          'title': 'Masjid Agung Palembang',
          'description': 'Masjid bersejarah dengan arsitektur khas Melayu yang megah dan penuh nilai spiritual.',
          'image': 'https://i0.wp.com/suaraislam.id/wp-content/uploads/2025/03/masjid-agung-sultan-mahmud-badaruddin.jpg?w=650&ssl=1',
          'location': 'Jl. Kapten A. Rivai, Palembang',
          'rating': '4.5'
        },
        {
          'title': 'Museum Balaputera Dewa',
          'description': 'Museum yang menyimpan berbagai koleksi sejarah dan budaya Sumatera Selatan.',
          'image': 'https://img.antaranews.com/cache/1200x800/2025/01/08/bla.jpg.webp',
          'location': 'Jl. Srijaya Negara, Palembang',
          'rating': '4.3'
        }
      ]
    },
    {
      'title': "Jawa",
      'description': "Daerah Jawa Sekitar",
      'image': 'https://upload.wikimedia.org/wikipedia/commons/2/25/Pradaksina.jpg',
      'wisataList': [
        {
          'title': 'Candi Borobudur',
          'description': 'Candi Buddha terbesar di dunia yang merupakan warisan dunia UNESCO.',
          'image': 'https://i0.wp.com/wisatavwborobudur.com/wp-content/uploads/2021/12/wisata-borobudur.jpg?resize=570%2C320&ssl=1',
          'location': 'Magelang, Jawa Tengah',
          'rating': '4.9'
        },
        {
          'title': 'Candi Prambanan',
          'description': 'Kompleks candi Hindu terbesar di Indonesia dengan arsitektur yang menawan.',
          'image': 'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2024/08/26/d19ecbec-b46a-49cf-8d60-38e556778caa-1724657499764-f9e8b92c821bf71d88df8787b7d52849.png',
          'location': 'Sleman, Yogyakarta',
          'rating': '4.8'
        },
        {
          'title': 'Malioboro Street',
          'description': 'Jalan legendaris Yogyakarta dengan berbagai toko, kuliner, dan budaya khas.',
          'image': 'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/eventThirdParty/2024/11/07/641fa575-eac4-4da3-8bcb-dfdd45d2480e-1730960131341-8a422a968549046951897d42905f14bf.jpg',
          'location': 'Yogyakarta',
          'rating': '4.6'
        }
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Daftar Wisata',
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 1.2,
            ),
            itemCount: wisata.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context) => WisataList(
                        daerahData: wisata[index],
                      ),
                    ),
                  );
                },
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(8),  
                        ),
                        child: Image.network(wisata[index]['image']!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, StackTrace) {
                            return Container(
                              color: Colors.grey[300],
                              child: Icon(
                                Icons.image_not_supported,
                                color: Colors.grey[600],
                                size: 50,
                              ),
                            );
                          },
                        ),
                      
                      ),
                      
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text(
                              wisata[index]['title']!,
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2,),
                            Text(
                              wisata[index]['description']!,
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Colors.grey[600],
                                fontSize: 11,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              );
            },
        ),
      ),
    );
  }
}