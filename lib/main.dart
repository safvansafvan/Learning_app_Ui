import 'package:flutter/material.dart';
import 'package:loginhomemt/controller/core/colors.dart';
import 'package:loginhomemt/view/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home ui',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            centerTitle: true, backgroundColor: AppColors.white, elevation: 0),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const HomePage(),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
    );
  }
}
