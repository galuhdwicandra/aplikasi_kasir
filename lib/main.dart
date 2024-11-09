// main.dart
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/menu_screen.dart';
import 'screens/product_grid_screen.dart';
import 'screens/date_time_picker.dart';

import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Kasir',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        Routes.register: (context) => RegisterScreen(),
        Routes.home: (context) => HomeScreen(),
        Routes.productGrid: (context) => ProductGridScreen(),
        Routes.dateTimePicker: (context) => DateTimePickerScreen(),
        Routes.menu: (context) => MenuScreen(),
      },
    );
  }
}
