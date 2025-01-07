import 'dart:html' as html;
import 'package:flutter/material.dart';

class YouTubePlayer extends StatefulWidget {
  final String videoId;

  const YouTubePlayer({super.key, required this.videoId});

  @override
  _YouTubePlayerState createState() => _YouTubePlayerState();
}

class _YouTubePlayerState extends State<YouTubePlayer> {
  late html.IFrameElement _iframeElement;

  @override
  void initState() {
    super.initState();

    // Create the iframe element to embed the YouTube video
    _iframeElement = html.IFrameElement()
      ..width = '100%'
      ..height = '100%'
      ..src = "https://www.youtube.com/embed/${widget.videoId}?si=lebCkN9pGjegqbig"
      ..style.border = 'none';

    // You can also add YouTube IFrame API events if needed
    _iframeElement.onLoad.listen((e) {
      print('YouTube video loaded');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 300, // Height of the embedded YouTube video
      child: HtmlElementView(viewType: 'youtube-player'),
    );
  }

  @override
  void dispose() {
    // Dispose the iframe when the widget is destroyed
    _iframeElement.remove();
    super.dispose();
  }
}

