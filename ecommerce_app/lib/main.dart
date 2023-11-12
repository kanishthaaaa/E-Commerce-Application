import 'package:ecommerce_app/models/shop.dart';
import 'package:ecommerce_app/pages/intro_page.dart';
import 'package:ecommerce_app/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Shop(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroPage(),
      theme: lightMode,
    );
  }
}
