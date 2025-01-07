import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class OffersPages extends StatelessWidget {
   OffersPages({super.key});

  final List<String> offers = [
    "BEGINNERS FRIENDLY",
    "24/7 SERVICE",
    "20+TRAINERS",
    "LIVE CONSULTANCY",
    "20+TRAINERS",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: offers.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.lightGreen,
                height: 50,
                width: double.infinity,
                child: Marquee(text:offers[index],
                  style: const TextStyle(color: Colors.white),
                ));
          }),
    );
  }
}
