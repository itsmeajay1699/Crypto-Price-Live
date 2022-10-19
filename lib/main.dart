import 'package:bitcoinpriceapp/screens/commonscreen.dart';
import 'package:bitcoinpriceapp/screens/pricescreen.dart';
import 'package:bitcoinpriceapp/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bitcoin price app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const SplashScreen(),
    );
  }
}
