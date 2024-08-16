// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahara/util/appbar.dart';

class OurCraft extends StatelessWidget {
  const OurCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor:Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // First row with text in the first container and an image in the second container
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 700,
                  width: 740,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'At Sahara Studio, each piece of furniture we create is a blend of tradition, artistry, and modern innovation. Our journey begins with the careful selection of the finest materials. We source sustainable hardwoods, such as oak, walnut, and teak, known for their durability and natural beauty. These woods are meticulously inspected and chosen for their unique grain patterns and structural integrity, ensuring that every piece of furniture we craft will stand the test of time Once the materials are selected, our skilled artisans, many of whom have honed their craft for decades, begin the process of shaping the wood. Using a combination of hand tools and modern machinery, they carve, plane, and sand each piece to perfection. Our approach balances traditional woodworking techniques with cutting-edge technology, allowing us to achieve precise cuts and finishes while maintaining the handcrafted quality that defines our work.',
                    style: GoogleFonts.cormorantGaramond(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 700,
                  width: 740,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/5.png',
                    width: 800,
                    height: 800,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            // Second row (unchanged from previous example)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 700,
                  width: 740,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/6.png',
                    width: 800,
                    height: 800,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 700,
                  width: 740,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "The design phase is where creativity truly comes to life. Our designers work closely with the craftsmen, translating intricate sketches into functional art. Each piece is a collaboration between the eye of the artist and the hand of the maker, resulting in furniture that is both aesthetically pleasing and incredibly durable. We pay close attention to the smallest details, from the curve of a chair's back to the grain alignment on a tabletop, ensuring that every angle, joint, and surface is thoughtfully considered.As the furniture takes shape, it undergoes a rigorous finishing process. We apply layers of natural oils, waxes, or lacquers, depending on the desired finish. This not only enhances the wood's natural beauty but also provides protection against the elements, ensuring that our pieces will retain their luster for years to come. Each finish is applied by hand, allowing us to achieve a depth of color and texture that cannot be replicated by machines.",
                    style: GoogleFonts.cormorantGaramond(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
