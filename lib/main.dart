import 'package:flutter/material.dart';
import 'package:reto_simple1/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reto Simple 1',
      home: LoginPage(),
    );
  }
}
