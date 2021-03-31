import 'package:supercell_clone/presentation/utils/utility.dart';
import 'package:flutter/material.dart';

class TextHover extends StatefulWidget {
  final String text;
  final Function onTap;

  const TextHover({Key key, this.text, @required this.onTap}) : super(key: key);
  @override
  _TextHoverState createState() => _TextHoverState();
}

class _TextHoverState extends State<TextHover> with TickerProviderStateMixin {
  AnimationController _colorController;
  Animation _colorTween;

  @override
  void initState() {
    _colorController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _colorTween = ColorTween(
      begin: KColors.getSecondaryColor(),
      end: Colors.white,
    ).animate(_colorController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _colorController,
        builder: (context, snapshot) {
          return Container(
            alignment: Alignment.center,
            height: 110.h,
            child: InkWell(
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: widget.onTap,
              onHover: (value) {
                if (value)
                  _colorController.forward();
                else
                  _colorController.reverse();
              },
              child: Text(
                widget.text,
                style: text22.copyWith(
                  color: _colorTween.value,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        });
  }
}
