import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_kelompok/models/shop.dart';
import 'package:tugas_kelompok/pages/cart_page.dart';
import 'package:tugas_kelompok/pages/intro_page.dart';
import 'package:tugas_kelompok/pages/shop_page.dart';
import 'package:tugas_kelompok/themes/dark_theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: IntroPage(),
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        '/intro_page': (context) => IntroPage(),
        '/shop_page': (context) => ShopPage(),
        '/cart_page': (context) => CartPage(),
      },
    );
  }
}
