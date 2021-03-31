import 'package:flutter/material.dart';
import 'package:supercell_clone/presentation/utils/utility.dart';
import 'package:url_launcher/url_launcher.dart';

class GamesContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) / 1.2,
      width: screenWidth(context),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue[900], KColors.getPrimaryColor()],
        ),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: 200.w,
              ),
              SizedBox(
                width: screenWidth(context) / 2.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "GAMES",
                      style: text60.copyWith(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    verticalSpaceMedium20,
                    Text(
                      "Our dream is to create games that are played by as many people as possible, enjoyed for years and remembered forever.",
                      style: text30.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    verticalSpaceMassive,
                    FlatButton(
                      height: 70.h,
                      minWidth: 180.w,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      color: Colors.white,
                      onPressed: () async {
                        await launch("https://supercell.com/en/games/");
                      },
                      child: Text(
                        "SEE GAMES",
                        style: text22.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 200.w,
            child: Image.asset(
              "assets/second.png",
              height: screenHeight(context) / 1.4,
            ),
          )
        ],
      ),
    );
  }
}
