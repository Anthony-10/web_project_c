import 'package:flutter/material.dart';
import 'package:web_project_c/to_start.dart';

import 'featured_page.dart';
import 'main_image.dart';
import 'offers_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainImage(),
            const SizedBox(
              height: 20,
            ),
            const OffersPages(),
            Container(
              padding: const EdgeInsets.only(left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const FeaturedPage(),
                  const SizedBox(
                    height: 60,
                  ),
                  HowToStart(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
