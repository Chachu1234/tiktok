import 'package:flutter/material.dart';
import 'package:woff/pages/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tiktok',
      theme: ThemeData(brightness: Brightness.dark),
      home: const FirstPage(),
    );
  }
}
