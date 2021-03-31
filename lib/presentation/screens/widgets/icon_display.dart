import 'package:supercell_clone/presentation/utils/utility.dart';
import 'package:flutter/material.dart';

class IconDisplay extends StatelessWidget {
  final String link;

  const IconDisplay({Key key, this.link}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      link,
      height: 35.h,
      color: Colors.white,
    );
  }
}
