import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  @override
  VideoPlayerScreenState createState() => VideoPlayerScreenState();
}

class VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;
  Future<void> _videoPlayerInitializer;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );
    _videoPlayerInitializer = _controller.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
            future: _videoPlayerInitializer,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      VideoPlayer(_controller),
                      ClosedCaption(text: _controller.value.caption.text),
                      _ControlsOverlay(controller: _controller),
                      VideoProgressIndicator(_controller,
                          padding:
                              EdgeInsets.only(left: 16, right: 40, bottom: 20),
                          allowScrubbing: true),
                    ],
                  ),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}

class _ControlsOverlay extends StatefulWidget {
  const _ControlsOverlay({Key key, this.controller}) : super(key: key);

  static const _examplePlaybackRates = [
    0.25,
    0.5,
    1.0,
    1.5,
    2.0,
    3.0,
    5.0,
    10.0,
  ];

  final VideoPlayerController controller;

  @override
  __ControlsOverlayState createState() => __ControlsOverlayState();
}

class __ControlsOverlayState extends State<_ControlsOverlay> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: Duration(milliseconds: 50),
          reverseDuration: Duration(milliseconds: 200),
          child: widget.controller.value.isPlaying
              ? Container()
              : Container(
                  color: Colors.black26,
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 100.0,
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            widget.controller.value.isPlaying
                ? widget.controller.pause()
                : widget.controller.play();
            setState(() {});
          },
        ),
        Align(
          alignment: Alignment.topRight,
          child: PopupMenuButton<double>(
            initialValue: widget.controller.value.playbackSpeed,
            tooltip: 'Playback speed',
            onSelected: (speed) {
              setState(() {
                widget.controller.setPlaybackSpeed(speed);
              });
            },
            itemBuilder: (context) {
              return [
                for (final speed in _ControlsOverlay._examplePlaybackRates)
                  PopupMenuItem(
                    value: speed,
                    child: Text('${speed}x'),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${widget.controller.value.playbackSpeed}x'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ValueListenableBuilder(
                  valueListenable: widget.controller,
                  builder: (context, VideoPlayerValue value, child) {
                    //Do Something with the value.
                    return Text(value.position.inSeconds.toString());
                  },
                ),
                Text('/'),
                Text(widget.controller.value.duration.inSeconds.toString()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
