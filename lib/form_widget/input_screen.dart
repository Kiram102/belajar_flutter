import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:latihan_flutter/form_widget/output_screen.dart';
import 'package:latihan_flutter/main_layout.dart';


class InputFormScreen extends StatefulWidget {
  const InputFormScreen({super.key});

  @override
  State<InputFormScreen> createState() => _InputFormScreenState();
}

class _InputFormScreenState extends State<InputFormScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController tglLahirController = TextEditingController();

  String _jk = "";
  String _agama = "";

  final List<String> agama = ["Islam", "Kristen", "Hindu", "Budha", "Katolik"];

  @override
  void initState() {
    super.initState();
    tglLahirController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Input Form",
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Formulir Biodata",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: namaController,
                  decoration: const InputDecoration(
                    labelText: "Nama Lengkap",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) return "Input Nama";
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Jenis Kelamin",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    Radio<String>(
                      value: "Laki-laki",
                      groupValue: _jk,
                      onChanged: (value) {
                        setState(() {
                          _jk = value!;
                        });
                      },
                    ),
                    const Text("Laki-laki"),
                    Radio<String>(
                      value: "Perempuan",
                      groupValue: _jk,
                      onChanged: (value) {
                        setState(() {
                          _jk = value!;
                        });
                      },
                    ),
                    const Text("Perempuan"),
                  ],
                ),
                if (_jk.isEmpty)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Pilih Jenis Kelamin",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: tglLahirController,
                  readOnly: true,
                  decoration: const InputDecoration(
                    labelText: "Tanggal Lahir",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) return "Input Tanggal Lahir";
                    return null;
                  },
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2101),
                    );
                    if (pickedDate != null) {
                      String formattedDate = DateFormat(
                        'dd/MM/yyyy',
                      ).format(pickedDate);
                      setState(() {
                        tglLahirController.text = formattedDate;
                      });
                    }
                  },
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: "Agama",
                    border: OutlineInputBorder(),
                  ),
                  value: _agama.isEmpty ? null : _agama,
                  items: agama
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _agama = value!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Pilih Agama";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: _submit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Colors.black),
                      ),
                    ),
                    child: const Text(
                      "Simpan",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      if (_jk.isEmpty) {
        setState(() {
          _jk = "";
        });
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Pilih Jenis Kelamin")));
        return;
      }
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutputFormScreen(
            nama: namaController.text,
            jk: _jk,
            tglLahir: tglLahirController.text,
            agama: _agama,
          ),
        ),
      );
    }
  }
}