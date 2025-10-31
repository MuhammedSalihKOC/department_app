import 'package:flutter/material.dart';
import 'screens/login_page.dart';

void main() {
  runApp(const DepartmentApp());
}

class DepartmentApp extends StatelessWidget {
  const DepartmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Department App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
