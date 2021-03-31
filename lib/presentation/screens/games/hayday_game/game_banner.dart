import 'package:flutter/material.dart';
import 'package:supercell_clone/presentation/utils/utility.dart';

class GameBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      child: Image.asset(
        "assets/haydaymain.jpg",
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
