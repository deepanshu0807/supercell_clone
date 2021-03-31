import 'package:flutter/material.dart';
import 'package:supercell_clone/presentation/screens/games/hayday_game/video_player_utils.dart';
import 'package:supercell_clone/presentation/utils/utility.dart';

class VideosSection extends StatefulWidget {
  @override
  _VideosSectionState createState() => _VideosSectionState();
}

class _VideosSectionState extends State<VideosSection> {
  PageController pageController = PageController();
  int currPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) / 1.1,
      width: screenWidth(context),
      child: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [
              Container(
                width: screenWidth(context),
                color: Colors.grey[100],
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VideoCardWidget(
                      text: "Too Much Wool",
                      videoId: "5BQOgUWU59w",
                    ),
                    horizontalSpaceMedium40,
                    VideoCardWidget(
                      text: "Cake",
                      videoId: "OStAo1NTi2k",
                    ),
                  ],
                ),
              ),
              Container(
                width: screenWidth(context),
                color: Colors.grey[100],
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VideoCardWidget(
                      text: "Neighborhood Group Hug",
                      videoId: "eL7GZYOFrDc",
                    ),
                    horizontalSpaceMedium40,
                    VideoCardWidget(
                      text: "360 Hug",
                      videoId: "dloBiZdmgHw",
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (currPage == 1)
            Positioned(
              left: 0,
              child: SizedBox(
                height: screenHeight(context) / 1.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        pageController.animateToPage(0,
                            duration: Duration(milliseconds: 800),
                            curve: Curves.ease);
                        setState(() {
                          currPage = 0;
                        });
                      },
                      child: Container(
                        height: 80.h,
                        width: 90.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30))),
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (currPage == 0)
            Positioned(
              right: 0,
              child: SizedBox(
                height: screenHeight(context) / 1.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        pageController.animateToPage(1,
                            duration: Duration(milliseconds: 800),
                            curve: Curves.ease);
                        setState(() {
                          currPage = 1;
                        });
                      },
                      child: Container(
                        height: 80.h,
                        width: 90.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30))),
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}

class VideoCardWidget extends StatelessWidget {
  final String videoId;
  final String text;

  const VideoCardWidget({
    Key key,
    @required this.videoId,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 620.h,
      width: 700.w,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x267088D2),
            blurRadius: 30.0,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: ytPlayer(context, videoId),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: text30.copyWith(
                      color: KColors.getSecondaryColor(),
                    ),
                  ),
                  Image.asset(
                    "assets/youtubename.png",
                    height: 70.h,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
