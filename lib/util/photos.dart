// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Photo1 extends StatelessWidget {
  const Photo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: Image.asset('assets/25.jpeg' , width: 1200,),
          ),
        ),
      ),
    );
  }
}

class Photo2 extends StatelessWidget {
  const Photo2({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: Image.asset(
              'assets/26.jpeg',
              width: 800,
            ),
          ),
        ),
      ),
    );
  }
}

class Photo3 extends StatelessWidget {
  const Photo3({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: Image.asset('assets/23.jpeg'),
          ),
        ),
      ),
    );
  }
}

class Photo4 extends StatelessWidget {
  const Photo4({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: Image.asset('assets/24.jpeg'),
          ),
        ),
      ),
    );
  }
}
