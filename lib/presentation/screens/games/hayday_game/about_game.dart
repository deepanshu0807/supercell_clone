import 'package:flutter/material.dart';
import 'package:supercell_clone/presentation/utils/utility.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) / 1.2,
      width: screenWidth(context),
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: SizedBox(
              height: screenHeight(context) / 2.2,
              width: screenWidth(context) / 2.3,
              child: Image.asset(
                "assets/haydaymobile1.jpg",
              ),
            ),
          ),
          Positioned(
            right: 200.w,
            top: 0,
            bottom: 0,
            child: SizedBox(
              width: screenWidth(context) / 2.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "FARM WITH FRIENDS AND FAMILY",
                    style: text50.copyWith(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  verticalSpaceMedium20,
                  Text(
                    "You don’t have to be from a farm to be a great farmer. Hay Day lets you get back to nature and experience the simple life of working the land. It’s a special game set in a real special place. Food grows free, people smile and the animals are always happy to see you. It never rains here, but the crops never die. And if you’re craving a little bacon, one of the pigs will be happy to fry some up for you. After all, what are pigs... oops, we mean neighbors for?",
                    style: text30.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  verticalSpaceMassive,
                  Row(
                    children: [
                      InkWell(
                        onTap: () async {
                          await launch(
                              "https://apps.apple.com/app/hay-day/id506627515");
                        },
                        child: Image.asset(
                          "assets/appstore.png",
                          height: 70.h,
                        ),
                      ),
                      horizontalSpaceMedium20,
                      InkWell(
                        onTap: () async {
                          await launch(
                              "https://play.google.com/store/apps/details?id=com.supercell.hayday&referrer=mat_click_id%3D2cff480805f177bb9a0b477c702bec6f-20141216-1681");
                        },
                        child: Image.asset(
                          "assets/playstore.png",
                          height: 100.h,
                        ),
                      ),
                      horizontalSpaceMedium20,
                      InkWell(
                        onTap: () async {
                          await launch(
                              "https://www.amazon.com/Supercell-ltd-Hay-Day/dp/B018GSK5ZC/");
                        },
                        child: Image.asset(
                          "assets/amazonstore.png",
                          height: 70.h,
                        ),
                      ),
                    ],
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
