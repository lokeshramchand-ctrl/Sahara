import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sahara/Pages/homepage.dart';
import 'package:sahara/Pages/our_craft.dart';
import 'package:sahara/classs/cart.dart';
import 'package:sahara/classs/shop.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Shop()),
        ChangeNotifierProvider(create: (context) => Cart()), // Provide Shop instance
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home_page': (context) => const Homepage(),
        '/craft': (context) => const OurCraft(),
      },
    );
  }
}
