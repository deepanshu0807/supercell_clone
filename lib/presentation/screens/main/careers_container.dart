import 'package:flutter/material.dart';
import 'package:supercell_clone/presentation/utils/space.dart';

class CareersContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: screenWidth(context),
      child: Image.asset(
        "assets/careeerssection.JPG",
        fit: BoxFit.cover,
      ),
    );
  }
}
