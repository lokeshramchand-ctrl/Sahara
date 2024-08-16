import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sahara/util/appbar.dart';
import 'package:sahara/util/photos.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  late CarouselController _carouselController;

  @override
  void initState() {
    super.initState();
    _carouselController = CarouselController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Image.asset('assets/Sahara.png'),
            ),
            const SizedBox(height: 40), // Adjusted height
            CarouselSlider(
              items: const [
                Photo1(),
                Photo2(),
                Photo3(),
                Photo4(),
              ],
              carouselController: _carouselController,
              options: CarouselOptions(
                height: 500,
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return GestureDetector(
                  onTap: () => _carouselController.animateToPage(index),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          _currentIndex == index ? Colors.brown : Colors.grey,
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 40), // Adjusted height
            Container(
              width: double.infinity,
              height: 300, // Adjust the height as needed
              margin: const EdgeInsets.all(
                  28.0), // Adds some margin around the rectangle
              padding: const EdgeInsets.all(
                  26.0), // Adds padding inside the container
              decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: BorderRadius.circular(0),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ABOUT US',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 16), // Space between texts
                  Text(
                    'PRODUCTS',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 16), // Space between texts
                  Text(
                    'CONTACT',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 16), // Space before the line
                  Divider(
                    color: Colors.white,
                    thickness: 2.0,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'PRIVACY POLICY AND COOKIE POLICY',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'LEGAL NOTICE',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.end, // Aligns the text to the right
                    children: [
                      Text(
                        'Sahara studio - All rights reserved | developed by: Lokesh.co',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
