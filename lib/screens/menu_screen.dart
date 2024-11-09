// screens/menu_screen.dart
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  String? _selectedOption;

  // Daftar opsi untuk dropdown menu
  final List<String> _options = [
    "Tambah Produk",
    "Hapus Produk",
    "Lihat Laporan",
    "Pengaturan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Aplikasi Kasir"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pilih Opsi:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            DropdownButton<String>(
              hint: Text("Pilih Aksi"),
              value: _selectedOption,
              items: _options.map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption = newValue;
                });

                // Menampilkan Snackbar saat opsi dipilih
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Anda memilih: $newValue')),
                );
              },
            ),
            SizedBox(height: 20),
            if (_selectedOption != null)
              Text(
                'Opsi yang dipilih: $_selectedOption',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
