import 'package:flutter/material.dart';

import 'models/gallary.dart';

final List<ToStart> toStart = [
  ToStart(
    title: 'Workout Videos',
    text: 'Access to hundreds of free,\n'
        'full-length workout videos',
  ),
  ToStart(
    title: 'Workout Programs',
    text: 'Affordable and effective\n'
        'workout programs.',
  ),
  ToStart(
    title: 'Meal Plans',
    text: 'Plans built with registered\n'
        'dietitians and nutritionists.',
  ),
  ToStart(
    title: 'WO Plus ALL ACCESS',
    text: 'Add powerful features to\n'
        'your membership',
  )
];

class HowToStart extends StatelessWidget {
  const HowToStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Not sure where to start?",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Program offer day-to-day guidance on an interactive calender to keep you on track.",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 20),
        Center(
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            children: toStart
                .map(
                  (start) => SizedBox(
                  height: 150,
                  width: 250,
                  child: Card(
                    color: Colors.grey[900],
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 25, right: 20, bottom: 25),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(start.title,
                              style: const TextStyle(
                                  color:Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700)),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(start.text,style: const TextStyle(
                              color:Colors.white
                          )),
                        ],
                      ),
                    ),
                  )),
            )
                .toList(),
          ),
        ),
      ],
    );
  }
}
