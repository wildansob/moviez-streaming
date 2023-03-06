import 'package:flutter/material.dart';
import 'package:moviez_streaming/UI/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moviez App',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
