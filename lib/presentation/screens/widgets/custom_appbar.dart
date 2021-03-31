import 'package:flutter/material.dart';
import 'package:supercell_clone/presentation/screens/games/hayday_game/hayday.dart';
import 'package:supercell_clone/presentation/screens/widgets/text_hover.dart';
import 'package:supercell_clone/presentation/utils/utility.dart';
import 'package:url_launcher/url_launcher.dart';

import '../homepage.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  double gamesTop = 0;
  double careersTop = 0;
  double otherOptionsTop = 0;

  void _gamesMouseEnter(double value) {
    setState(() {
      gamesTop = value;
    });
  }

  void _careersMouseEnter(double value) {
    setState(() {
      careersTop = value;
    });
  }

  void _otherOptionsMouseEnter(double value) {
    setState(() {
      otherOptionsTop = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          top: gamesTop,
          left: 200.w,
          right: 200.w,
          child: MouseRegion(
            onEnter: (e) => _gamesMouseEnter(110.h),
            onExit: (e) => _gamesMouseEnter(0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              height: 110.h,
              color: Colors.black.withOpacity(0.7),
              alignment: Alignment.center,
              child: Row(
                children: [
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Hay Day",
                    onTap: () {
                      Navigator.pushNamed(context, '/games/HayDay');
                    },
                  ),
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Clash of Clans",
                    onTap: () async {
                      await launch(
                          "https://supercell.com/en/games/clashofclans/");
                    },
                  ),
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Boom beach",
                    onTap: () async {
                      await launch("https://supercell.com/en/games/boombeach/");
                    },
                  ),
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Clash Royale",
                    onTap: () async {
                      await launch(
                          "https://supercell.com/en/games/clashroyale/");
                    },
                  ),
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Brawl Stars",
                    onTap: () async {
                      await launch(
                          "https://supercell.com/en/games/brawlstars/");
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        //------
        //Careers submenu
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          top: careersTop,
          left: 200.w,
          right: 200.w,
          child: MouseRegion(
            onEnter: (e) => _careersMouseEnter(110.h),
            onExit: (e) => _careersMouseEnter(0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              height: 110.h,
              color: Colors.black.withOpacity(0.7),
              alignment: Alignment.center,
              child: Row(
                children: [
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Why You Might Love It Here",
                    onTap: () {},
                  ),
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Our Offices",
                    onTap: () {},
                  ),
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Joining Supercell",
                    onTap: () {},
                  ),
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Living in Helsinki",
                    onTap: () {},
                  ),
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Living in Shanghai",
                    onTap: () {},
                  ),
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Open Positions",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        //-----
        //Other Options submenu
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          top: otherOptionsTop,
          left: 200.w,
          right: 200.w,
          child: MouseRegion(
            onEnter: (e) => _otherOptionsMouseEnter(110.h),
            onExit: (e) => _otherOptionsMouseEnter(0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              height: 110.h,
              color: Colors.black.withOpacity(0.7),
              alignment: Alignment.center,
              child: Row(
                children: [
                  horizontalSpaceLarge,
                  TextHover(
                    text: "News",
                    onTap: () {},
                  ),
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Our Story",
                    onTap: () {},
                  ),
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Be Safe and Play Fair",
                    onTap: () {},
                  ),
                  horizontalSpaceLarge,
                  TextHover(
                    text: "For Media",
                    onTap: () {},
                  ),
                  horizontalSpaceLarge,
                  TextHover(
                    text: "Investments",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),

        //Main appbar
        Positioned(
          top: 0,
          left: 200.w,
          right: 200.w,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            height: 110.h,
            color: Colors.black,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Image.asset(
                        "assets/logo.jpeg",
                        height: 70.h,
                      ),
                    ),
                    horizontalSpaceLarge,
                    MouseRegion(
                      onEnter: (e) => _gamesMouseEnter(110.h),
                      onExit: (e) => _gamesMouseEnter(0),
                      child: TextHover(
                        text: "Games",
                        onTap: () {},
                      ),
                    ),
                    horizontalSpaceLarge,
                    MouseRegion(
                      onEnter: (e) => _careersMouseEnter(110.h),
                      onExit: (e) => _careersMouseEnter(0),
                      child: TextHover(
                        text: "Careers",
                        onTap: () {},
                      ),
                    ),
                    horizontalSpaceLarge,
                    TextHover(
                      text: "Support",
                      onTap: () {},
                    ),
                    horizontalSpaceLarge,
                    MouseRegion(
                      onEnter: (e) => _otherOptionsMouseEnter(110.h),
                      onExit: (e) => _otherOptionsMouseEnter(0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.grey[900],
                        ),
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        height: 35.h,
                        child: TextHover(
                          text: "• • •",
                          onTap: () {},
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        Row(
                          children: [
                            Text(
                              "SUPERCELL",
                              style: text22.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            horizontalSpaceSmall,
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                              ),
                              alignment: Alignment.topCenter,
                              padding: EdgeInsets.all(5),
                              height: 40.h,
                              child: Text(
                                "ID",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                  fontSize: 22.sp,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    horizontalSpaceMedium40,
                    VerticalDivider(
                      width: 1,
                      color: KColors.getSecondaryColor().withOpacity(0.6),
                    ),
                    horizontalSpaceMedium40,
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.search,
                        color: KColors.getSecondaryColor().withOpacity(0.6),
                        size: 45.sp,
                      ),
                    ),
                    horizontalSpaceMedium20,
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
