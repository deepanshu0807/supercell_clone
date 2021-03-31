import 'package:flutter/material.dart';
import 'package:supercell_clone/presentation/utils/space.dart';

class NewsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      child: Image.asset("assets/haydaynews.jpg"),
    );
  }
}
