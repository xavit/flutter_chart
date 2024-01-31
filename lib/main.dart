import 'package:flutter/material.dart';
import 'package:flutter_web_chart/src/ui/views/bigdata_page.dart';
import 'package:flutter_web_chart/src/ui/views/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );
  }
}
