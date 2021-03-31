import 'package:flutter/material.dart';
import 'package:supercell_clone/presentation/utils/utility.dart';
import 'package:supercell_clone/presentation/screens/homepage.dart';

class MainContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      color: Colors.white,
      child: Stack(
        children: [
          Image.asset(
            "assets/main.jpg",
            fit: BoxFit.fitWidth,
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SUPERCELL",
                  style: text60.copyWith(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                verticalSpaceMedium20,
                Text(
                  "Makers of Hay Day, Clash of Clans, Boom Beach,\nClash Royale and Brawl Stars.",
                  textAlign: TextAlign.center,
                  style: text30.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 80.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    height: 60.h,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: KColors.getPrimaryColor(),
                    onPressed: () {
                      scrollController.animateTo(screenHeight(context) / 1.3,
                          duration: Duration(milliseconds: 600),
                          curve: Curves.decelerate);
                    },
                    child: SizedBox(
                      width: 200.w,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 60.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  color: Color(0xff247EF3)),
                              child: Icon(
                                Icons.keyboard_arrow_down_sharp,
                                color: Colors.white,
                                size: 40.sp,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Text(
                                "SEE LATEST",
                                style: text20.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
