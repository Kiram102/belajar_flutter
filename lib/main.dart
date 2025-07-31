import 'package:flutter/material.dart';
import 'package:latihan_flutter/container_widget/container_dua.dart';
import 'package:latihan_flutter/container_widget/container_satu.dart';
import 'package:latihan_flutter/form_widget/input_screen.dart';
import 'package:latihan_flutter/grid_view/grid_product.dart';
import 'package:latihan_flutter/grid_view/grid_satu.dart';
import 'package:latihan_flutter/latihan/contoh.dart';
import 'package:latihan_flutter/latihan/latihan_card.dart';
import 'package:latihan_flutter/latihan/latihan_satu.dart';
import 'package:latihan_flutter/list_widget/list_dua.dart';
import 'package:latihan_flutter/list_widget/list_satu.dart';
import 'package:latihan_flutter/list_widget/list_screen.dart';
import 'package:latihan_flutter/main_layout.dart';
import 'package:latihan_flutter/row_column_widget/column_satu.dart';
import 'package:latihan_flutter/row_column_widget/latihan_row_column.dart';
import 'package:latihan_flutter/row_column_widget/row_satu.dart';
import 'package:latihan_flutter/stack_widget/stack_dua.dart';
import 'package:latihan_flutter/stack_widget/stack_satu.dart';
import 'package:latihan_flutter/stack_widget/stack_tiga.dart';
import 'package:latihan_flutter/tugas_30_juli/halaman_utama.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: InputFormScreen()
    );
  }
}

class HelloFultter extends StatelessWidget {
  const HelloFultter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Flutter',
      body: Center(
        child: Text('Hello, Flutter',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}