import 'package:flutter/material.dart';
import 'package:supercell_clone/presentation/utils/utility.dart';
import 'package:youtube_plyr_iframe/youtube_plyr_iframe.dart';

void _showDialog(context, videoID) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return YoutubeViewer(
        videoID,
      );
    },
  );
}

Widget ytPlayer(context, videoID) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: () {
        _showDialog(
          context,
          videoID,
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Colors.transparent,
            width: double.infinity,
            child: Image.network(
              YoutubePlayerController.getThumbnail(
                videoId: videoID,
                quality: ThumbnailQuality.max,
                webp: false,
              ),
              fit: BoxFit.cover,
            ),
          ),
          Icon(
            Icons.play_circle_outline,
            color: Colors.white,
            size: 150.sp,
          ),
        ],
      ),
    ),
  );
}

class YoutubeViewer extends StatefulWidget {
  final String videoID;
  YoutubeViewer(this.videoID);
  @override
  _YoutubeViewerState createState() => _YoutubeViewerState();
}

class _YoutubeViewerState extends State<YoutubeViewer> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoID,
      params: YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
        desktopMode: true,
        autoPlay: true,
        enableCaption: true,
        showVideoAnnotations: false,
        enableJavaScript: true,
        privacyEnhanced: true,
        playsInline: false,
      ),
    )..listen((value) {
        if (value.isReady && !value.hasPlayed) {
          _controller
            ..hidePauseOverlay()
            ..play()
            ..hideTopMenu();
        }
        if (value.hasPlayed) {
          // _controller..hideEndScreen();
        }
      });
    _controller.onExitFullscreen = () {
      _controller.close();
      Navigator.of(context).pop();
    };
  }

  @override
  Widget build(BuildContext context) {
    final player = YoutubePlayerIFrame();
    return YoutubePlayerControllerProvider(
      key: UniqueKey(),
      controller: _controller,
      child: AlertDialog(
        insetPadding: EdgeInsets.all(10),
        backgroundColor: Colors.black,
        content: player,
        contentPadding: EdgeInsets.all(0),
        actions: <Widget>[
          new Center(
            child: FlatButton(
              child: new Text(
                "Close",
                style: text22.copyWith(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
