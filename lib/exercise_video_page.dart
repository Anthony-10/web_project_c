import 'package:flutter/material.dart';
import 'package:web_project_c/player_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ExerciseVideoPage extends StatefulWidget {
  const ExerciseVideoPage({super.key});

  @override
  State<ExerciseVideoPage> createState() => _ExerciseVideoPageState();
}

class _ExerciseVideoPageState extends State<ExerciseVideoPage> {
  final videoURL = [
    "https://youtube.com/watch?v=EbfdMaV7qqM&t=150s",
  ];

  /*late YoutubePlayerController playerController;*/

  /*@override
  void initState() {
    // TODO: implement initState
    final videoId = YoutubePlayer.convertUrlToId(videoURL);
    playerController = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  @override
  void dispose(){
    playerController.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Popular Exercises",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              itemCount: videoURL.length,
              itemBuilder: (BuildContext context, int index) {
                final videoID = YoutubePlayer.convertUrlToId(videoURL[index]);
                print("$videoID,llllllllllllllllllllllllllllllllllllllllllllllllllllll");
                return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PlayerScreen(videoId: videoID)));
                    },
                    child: Image.network(
                        YoutubePlayer.getThumbnail(videoId: videoID!)));
              }, /*child: YoutubePlayer(controller: playerController)*/
            ),
          )
        ],
      ),
    );
  }
}
