import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:supercell_clone/presentation/screens/main/careers_container.dart';
import 'package:supercell_clone/presentation/utils/utility.dart';

import 'main/content_container.dart';
import 'main/footer.dart';
import 'main/games_container.dart';
import 'main/main_container.dart';
import 'widgets/custom_appbar.dart';

ScrollController scrollController = ScrollController();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double cookiesB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //Homepage Components
          ListView(
            controller: scrollController,
            children: [
              MainContainer(),
              ContentContainer(),
              GamesContainer(),
              CareersContainer(),
              Footer(),
            ],
          ),

          //Appbar
          CustomAppBar(),
          //CookieNotifier
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            bottom: cookiesB,
            left: 0,
            right: 0,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                child: Container(
                  height: 100.h,
                  color: Colors.black.withOpacity(0.8),
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Our site uses cookies to enhance your user experience and measure site traffic.",
                            style: text20.copyWith(
                              color: KColors.getSecondaryColor(),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Learn More",
                            style: text22.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      FlatButton(
                        height: 60.h,
                        minWidth: 150.w,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: KColors.getPrimaryColor(),
                        onPressed: () {
                          setState(() {
                            cookiesB = -100.h;
                          });
                        },
                        child: Text(
                          "GOT IT!",
                          style: text20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
