import 'package:coffee_application/bottom_nav.dart';
import 'package:coffee_application/cover_pages.dart';
import 'package:coffee_application/pages/coffee_detail_page.dart';
import 'package:coffee_application/pages/details_pages.dart';
import 'package:coffee_application/pages/last_page.dart';
import 'package:coffee_application/pages/order_pages.dart';
import 'package:coffee_application/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

