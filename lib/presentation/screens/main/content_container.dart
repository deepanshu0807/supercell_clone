import 'package:flutter/material.dart';
import 'package:supercell_clone/presentation/utils/utility.dart';
import 'package:url_launcher/url_launcher.dart';

class ContentContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 200.w, vertical: 60.h),
      width: screenWidth(context),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ContentCardWidget(
                picUrl: "assets/cont1.jpg",
                title: "The Art of Supercell Out Now",
                url:
                    "https://supercell.com/en/news/art-of-supercell-10th-anniversary-edition-out-now/7506/",
              ),
              ContentCardWidget(
                picUrl: "assets/cont2.jpg",
                title: "Supercell ID Now in Beatstar by Space Ape",
                url:
                    "https://supercell.com/en/news/supercell-id-expanding-new-games/7503/",
              ),
            ],
          ),
          verticalSpaceLarge,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ContentCardWidget(
                picUrl: "assets/cont3.jpg",
                title: "Ilkka's Take on Supercell in 2020",
                url:
                    "https://supercell.com/en/news/my-take-supercell-2020-we-begin-our-second-decade/7499/",
              ),
              ContentCardWidget(
                picUrl: "assets/cont4.jpg",
                title: "10 Learnings from 10 Years",
                url:
                    "https://supercell.com/en/news/10-learnings-10-years/7436/",
              ),
            ],
          ),
          verticalSpaceLarge,
          FlatButton(
            height: 75.h,
            minWidth: 220.w,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: KColors.getPrimaryColor(),
            onPressed: () {},
            child: Text(
              "NEWS ARCHIVE",
              style: text20.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          verticalSpaceLarge,
        ],
      ),
    );
  }
}

class ContentCardWidget extends StatefulWidget {
  final String picUrl;
  final String title;
  final String url;

  const ContentCardWidget({Key key, this.picUrl, this.title, this.url})
      : super(key: key);
  @override
  _ContentCardWidgetState createState() => _ContentCardWidgetState();
}

class _ContentCardWidgetState extends State<ContentCardWidget> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context) / 2.8,
      height: screenHeight(context) / 1.5,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: InkWell(
              onTap: () async {
                await launch(widget.url);
              },
              child: Image.asset(
                widget.picUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                verticalSpaceSmall,
                Text(
                  "NEWS",
                  style: text22.copyWith(
                      color: Colors.pink[600], fontWeight: FontWeight.bold),
                ),
                verticalSpaceMedium20,
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onTap: () async {
                    await launch(widget.url);
                  },
                  onHover: (value) {
                    setState(() {
                      hover = value ? true : false;
                    });
                  },
                  child: Text(
                    widget.title,
                    style: text30.copyWith(
                        color:
                            hover ? KColors.getSecondaryColor() : Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
