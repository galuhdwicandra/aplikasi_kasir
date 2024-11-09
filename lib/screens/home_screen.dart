// screens/home_screen.dart
import 'package:flutter/material.dart';
import '../utils/routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Dashboard Kasir'),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildNavigationCard(
              context,
              title: "Menu Dropdown",
              icon: Icons.menu,
              color: Colors.orange,
              route: Routes.menu,
            ),
            _buildNavigationCard(
              context,
              title: "Produk GridView",
              icon: Icons.grid_view,
              color: Colors.green,
              route: Routes.productGrid,
            ),
            _buildNavigationCard(
              context,
              title: "Pilih Tanggal & Waktu",
              icon: Icons.date_range,
              color: Colors.blue,
              route: Routes.dateTimePicker,
            ),
            _buildNavigationCard(
              context,
              title: "Pengaturan",
              icon: Icons.settings,
              color: Colors.purple,
              route: Routes
                  .menu, // Contoh, bisa diarahkan ke halaman pengaturan lainnya
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Products',
          ),
        ],
      ),
    );
  }

  // Widget untuk membuat card navigasi
  Widget _buildNavigationCard(BuildContext context,
      {required String title,
      required IconData icon,
      required Color color,
      required String route}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 6,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: color,
            ),
            SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
