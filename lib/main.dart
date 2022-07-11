import 'package:flutter/material.dart';
import 'package:intragram_clone_by_alejo/feature/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:intragram_clone_by_alejo/feature/home/views/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationBar(0),
    );
  }
}


