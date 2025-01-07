import 'package:flutter/material.dart';
import 'package:web_project_c/exercise_video_page.dart';
import 'package:web_project_c/player_screen1.dart';
import 'package:web_project_c/youtube_player.dart';
import 'package:web_project_c/services.dart';
import 'package:web_project_c/to_start.dart';
import 'package:web_project_c/youtube_vedios.dart';

import 'exercise_videos/homeworkout_videos.dart';
import 'exercise_videos/streanghttraining_videos.dart';
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
            OffersPages(),
            Container(
              padding: const EdgeInsets.only(left: 50),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  FeaturedPage(),
                  SizedBox(
                    height: 60,
                  ),
                  HowToStart(),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Services(),
            const SizedBox(
              height: 60,
            ),
            const HomeWorkoutVideos(),
            const SizedBox(
              height: 5,
            ),
            const StrengthTrainingVideos(),
          ],
        ),
      ),
    );
  }
}
