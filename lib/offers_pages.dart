import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

final List<String> offers = [
  "BEGINNERS FRIENDLY",
  "24/7 SERVICE",
  "20+TRAINERS",
  "LIVE CONSULTANCY",
  "20+TRAINERS",
];

class OffersPages extends StatelessWidget {
   const OffersPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.lightGreen,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: offers.length,
          itemBuilder: (context, index) {
            return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(offers[index],
                    style: const TextStyle(color: Colors.white, ),
                ),
                const Spacer()
              ],
            );
          }),
    );
  }
}

