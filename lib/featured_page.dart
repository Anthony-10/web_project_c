import 'package:flutter/material.dart';

final List<String> featured = [
  "BEGINNERS FRIENDLY",
  "24/7 SERVICE",
  "20+TRAINERS",
];

class FeaturedPage extends StatelessWidget {
  const FeaturedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "AS FEATURED IN",
            style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10,right: 10),
                itemCount: featured.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Text(featured[index],style: const TextStyle(color: Colors.white),),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
