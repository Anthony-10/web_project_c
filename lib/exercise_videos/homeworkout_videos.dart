import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../models/image.dart';
import '../models/videos.dart';

class HomeWorkoutVideos extends StatefulWidget {
  const HomeWorkoutVideos({super.key});

  @override
  State<HomeWorkoutVideos> createState() => _HomeWorkoutVideosState();
}

class _HomeWorkoutVideosState extends State<HomeWorkoutVideos> {
  late VideoPlayerController videoPlayerController;

  var assetsImage = [
    "assets/videos/cardio.mp4",
    "assets/videos/strengthTraining.mp4",
    "assets/videos/zumba.mp4"
  ].obs;

  final List<ToImage> toImage = [
    ToImage(
      title: 'assets/images/dumbbell-bench-press_0.jpg',
      video: "assets/videos/cardio.mp4",
    ),
    ToImage(
      title: 'assets/images/dumbbell-goblet-squat-1.jpg',
      video: "assets/videos/overheadPress.mp4",
    ),
    ToImage(
        title: 'assets/images/dumbbell-lateral-raise.jpg',
        video: "assets/videos/bench-press.mp4"
    ),
  ];

  List items = [
    'assets/images/mainImage.jpg',
    'assets/images/mainImage.jpg',
    'assets/images/mainImage.jpg'
  ];

  bool isVisible = false;

  var image = "assets/videos/cardio.mp4".obs;

  void _playVideo() {
    videoPlayerController = VideoPlayerController.asset(image.value)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => videoPlayerController.play());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _playVideo();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
          child: Container(
              color: Colors.lightGreen,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '01',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    const Text(
                      'Workout at Home',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Icon(
                      !isVisible?Icons.arrow_forward_outlined:Icons.arrow_downward_outlined,
                      size: 20,
                    )
                  ],
                ),
              )),
        ),
        Visibility(
          visible: isVisible,
          child: Center(
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: toImage
                  .map(
                    (start) => SizedBox(
                        height: 150,
                        width: 250,
                        child: InkWell(
                            onTap: () {
                              image.value = start.video;
                              _playVideo();
                              showDialog(
                                  context: context,
                                  builder: (BuildContext conttext) {
                                    return Dialog.fullscreen(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          AspectRatio(
                                            aspectRatio: 16 / 9,
                                            child: VideoPlayer(
                                              videoPlayerController,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () =>
                                                videoPlayerController
                                                        .value.isPlaying
                                                    ? videoPlayerController
                                                        .pause()
                                                    : videoPlayerController
                                                        .play(),
                                            icon: Icon(
                                              videoPlayerController
                                                      .value.isPlaying
                                                  ? Icons.pause
                                                  : Icons.play_arrow,
                                              color: Colors.black,
                                              size: 40,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Image.asset(height: 100,
                                width: 50,start.title))),
                  )
                  .toList(),
            ),
          ),

          /* SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              itemCount: toImage.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: () {
                      Dialog.fullscreen(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AspectRatio(
                              aspectRatio: 16 / 9,
                              child: VideoPlayer(
                                videoPlayerController,
                              ),
                            ),
                            IconButton(
                              onPressed: () =>
                                  videoPlayerController.value.isPlaying
                                      ? videoPlayerController.pause()
                                      : videoPlayerController.play(),
                              icon: Icon(
                                videoPlayerController.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: Colors.black,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Image.asset(items[index]));
              }, */
          /*child: YoutubePlayer(controller: playerController)*/ /*),),*/
        )
      ],
    );
  }
}
