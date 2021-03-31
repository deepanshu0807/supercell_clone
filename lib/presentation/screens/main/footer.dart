import 'package:flutter/material.dart';
import 'package:supercell_clone/presentation/screens/widgets/icon_display.dart';
import 'package:supercell_clone/presentation/utils/utility.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) / 1.6,
      width: screenWidth(context),
      color: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 200.w, vertical: 50.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Follow us on",
                    style: text20.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpaceMedium25,
                  Row(
                    children: [
                      IconDisplay(
                        link: "assets/youtube.png",
                      ),
                      horizontalSpaceMedium25,
                      IconDisplay(
                        link: "assets/facebook.png",
                      ),
                      horizontalSpaceMedium25,
                      IconDisplay(
                        link: "assets/instagram.png",
                      ),
                      horizontalSpaceMedium25,
                      IconDisplay(
                        link: "assets/twitter.png",
                      ),
                      horizontalSpaceMedium25,
                      IconDisplay(
                        link: "assets/linkedin.png",
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () async {
                      await launch(
                          "https://apps.apple.com/us/developer/supercell/id488106216");
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
                          "https://play.google.com/store/apps/dev?id=6715068722362591614&hl=en");
                    },
                    child: Image.asset(
                      "assets/playstore.png",
                      height: 100.h,
                    ),
                  ),
                ],
              )
            ],
          ),
          verticalSpaceLarge,
          Divider(
            height: 1,
            color: KColors.getSecondaryColor().withOpacity(0.6),
          ),
          verticalSpaceLarge,
          Row(
            children: [
              Text(
                "Terms of Service",
                style: text20.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              horizontalSpaceLarge,
              Text(
                "Privacy Policy",
                style: text20.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              horizontalSpaceLarge,
              Text(
                "Parent's Guide",
                style: text20.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              horizontalSpaceLarge,
              Text(
                "Safer and Fair Play Policy",
                style: text20.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          verticalSpaceLarge,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Supercell Oy\nJätkäsaarenlaituri 1\n00180 Helsinki\nFinland",
                style: text20.copyWith(
                  height: 1.6,
                  color: KColors.getSecondaryColor(),
                ),
              ),
              Image.asset(
                "assets/logo.jpeg",
                height: 80.h,
              )
            ],
          )
        ],
      ),
    );
  }
}
