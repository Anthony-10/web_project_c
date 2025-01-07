import 'package:flutter/material.dart';

import '../responsive.dart';

class Services extends StatefulWidget {
  const Services({
    super.key,
  });

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50,right: 50),
      color: Colors.lightGreen,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Work out at home for free",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 350,
                      child: Text("we believe fitness should be accessible to everyone, everywhere,\n"
                          "regardless of income or access to the gym. With hundreds of\n"
                          "professional workouts, healthy recipes and infomative articles, as\n"
                          "well as one of the most positive communities on the web, you'll have\n"
                          "everything you need to reach your personal fitness goals-for free!")
                    )
                  ],
                ),
              ),
              if (Responsive.isDesktop(context))
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Image.asset(
                    "assets/images/gymPhotos.jpg",
                    height: 500,
                    width: 500,
                  ),
                )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (Responsive.isDesktop(context))
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Image.asset(
                    "assets/images/gymPhotos1.jpg",
                    height: 500,
                    width: 500,
                  ),
                ),
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get more with low-cost\n"
                          "training programs and\n"
                          "advanced features.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        width: 350,
                        child: Text("We believe fitness should be accessible to everyone, everywhere,\n"
                            "regardless of income or access to the gym. With hundreds of professional\n"
                            "workouts, healthy recipes and informative articles, as well as one of the\n"
                            "most positive communities on the web, you'll have everything you need to\n"
                            "reach your personal fitness goals - for free")
                    )
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
