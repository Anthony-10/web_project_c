import 'package:flutter/material.dart';

import 'models/membership.dart';

class MembershipPage extends StatefulWidget {
  const MembershipPage({super.key});

  @override
  State<MembershipPage> createState() => _MembershipPageState();
}

class _MembershipPageState extends State<MembershipPage> {
  final List<Membership> membership = [
    Membership(
      title: 'Join for Free',
      text1: "Reach your fitness goals or maintain your\n"
          "healthy lifestyle with professional training\n"
          "and support from a positive and active\n"
          "online community",
      text2: 'a) 600 Full-Length Workout Videos\n'
          'b) Customizable Calendar\n'
          'c) Healthy Recipes\n'
          'd) Health and Fitness Article\n'
          'e) Positive and Supportive Online Community\n'
          'f) No Credit Card Needed',
    ),
    Membership(
      title: 'WO PIus',
      text1: "WO Plus includes everything you get with a\n"
          "free membership and adds brand new\n"
          "convenience features, fitness tools, and\n"
          "unique content",
      text2: 'a) Ads-Free Website and Videos\n'
          'b) Surprise Me Workout Selection Tool\n'
          'c) Statistics for Your Activities\n'
          'd) Trackers to See Your Progress\n'
          'e) Video Tags\n'
          'f) FB Plus Routines\n'
          'g) Rest Day Complete',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 30,right: 30),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Membership",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,),),
            const SizedBox(height: 10,),
            const Divider(),
            const SizedBox(height: 10,),
            Wrap(
              spacing: 20,
                runSpacing: 20,
                children: membership.map((start)=>SizedBox(
                  width: 300,
                  height: 400,
                  child: Card(
                    color: Colors.grey[900],
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(start.title,style: const TextStyle(color: Colors.white,fontSize: 30)),
                          Text(start.text1,style: const TextStyle(color: Colors.white),),
                          const SizedBox(height: 10,),
                          Text(start.text2,style: const TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                )).toList()
            ),

          ]
      ),
    );
  }
}
