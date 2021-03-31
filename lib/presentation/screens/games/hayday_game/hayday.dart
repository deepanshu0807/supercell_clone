import 'package:flutter/material.dart';
import 'package:supercell_clone/presentation/screens/games/hayday_game/video_section.dart';
import 'package:supercell_clone/presentation/screens/main/footer.dart';
import 'package:supercell_clone/presentation/screens/widgets/custom_appbar.dart';

import 'about_game.dart';
import 'game_banner.dart';
import 'news_section.dart';

class HayDay extends StatefulWidget {
  @override
  _HayDayState createState() => _HayDayState();
}

class _HayDayState extends State<HayDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ListView(
            children: [
              GameBanner(),
              AboutGame(),
              NewsSection(),
              VideosSection(),
              Footer(),
            ],
          ),
          //Appbar
          CustomAppBar(),
        ],
      ),
    );
  }
}
