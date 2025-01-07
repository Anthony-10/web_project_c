import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class PlayerScreen1 extends StatefulWidget {
  const PlayerScreen1({super.key});

  @override
  State<PlayerScreen1> createState() => _PlayerScreen1State();
}

class _PlayerScreen1State extends State<PlayerScreen1> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        "https://youtube.com/watch?v=EbfdMaV7qqM&t=150s"))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: _controller.value.isInitialized
                  ? AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            )
                  : Container(),

        ),
    );

  }
}
