import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supercell_clone/presentation/screens/games/hayday_game/hayday.dart';
import 'presentation/screens/homepage.dart';
import 'presentation/utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        ScreenUtil.init(
          constraints,
          designSize: const Size(1920, 1080),
          allowFontScaling: true,
        );
        return MaterialApp(
          title: 'Supercell',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: KColors.getPrimaryColor(),
            accentColor: KColors.getSecondaryColor(),
            splashColor: KColors.getPrimaryColor().withOpacity(0.6),
            highlightColor: KColors.getPrimaryColor(),
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),
            '/games/HayDay': (context) => HayDay(),
          },
          //home: HomePage(),
          //home: HayDay(),
        );
      },
    );
  }
}
