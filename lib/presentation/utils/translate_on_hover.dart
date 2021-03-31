import 'package:flutter/material.dart';

import 'colors.dart';

class TranslateUpOnHover extends StatefulWidget {
  final Widget child;
  // You can also pass the translation in here if you want to
  TranslateUpOnHover({Key key, this.child}) : super(key: key);

  @override
  _TranslateUpOnHoverState createState() => _TranslateUpOnHoverState();
}

class _TranslateUpOnHoverState extends State<TranslateUpOnHover> {
  final nonHoverTransform = Matrix4.identity()..translate(0, 0, 0);
  final hoverTransform = Matrix4.identity()..translate(0, -5, 0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        transform: _hovering ? hoverTransform : nonHoverTransform,
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}

class TranslateRightOnHover extends StatefulWidget {
  final Widget child;
  // You can also pass the translation in here if you want to
  TranslateRightOnHover({Key key, this.child}) : super(key: key);

  @override
  _TranslateRightOnHoverState createState() => _TranslateRightOnHoverState();
}

class _TranslateRightOnHoverState extends State<TranslateRightOnHover> {
  final nonHoverTransform = Matrix4.identity()..translate(0, 0, 0);
  final hoverTransform = Matrix4.identity()..translate(10, 0, 0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        transform: _hovering ? hoverTransform : nonHoverTransform,
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}

class TranslateDownOnHover extends StatefulWidget {
  final Widget child;
  // You can also pass the translation in here if you want to
  TranslateDownOnHover({Key key, this.child}) : super(key: key);

  @override
  _TranslateDownOnHoverState createState() => _TranslateDownOnHoverState();
}

class _TranslateDownOnHoverState extends State<TranslateDownOnHover> {
  final nonHoverTransform = Matrix4.identity()..translate(0, 0, 0);
  final hoverTransform = Matrix4.identity()..translate(0, 10, 0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        transform: _hovering ? hoverTransform : nonHoverTransform,
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}

class TranslateLeftOnHover extends StatefulWidget {
  final Widget child;

  TranslateLeftOnHover({Key key, this.child}) : super(key: key);

  @override
  _TranslateLeftOnHoverState createState() => _TranslateLeftOnHoverState();
}

class _TranslateLeftOnHoverState extends State<TranslateLeftOnHover> {
  final nonHoverTransform = Matrix4.identity()..translate(0, 0, 0);
  final hoverTransform = Matrix4.identity()..translate(-10, 0, 0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        transform: _hovering ? hoverTransform : nonHoverTransform,
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}

class TranslateColorOnHover extends StatefulWidget {
  final Widget child;

  TranslateColorOnHover({Key key, this.child}) : super(key: key);

  @override
  _TranslateColorOnHoverState createState() => _TranslateColorOnHoverState();
}

class _TranslateColorOnHoverState extends State<TranslateColorOnHover> {
  final nonHoverColor = Colors.transparent;
  final hoverColor = KColors.getPrimaryColor().withOpacity(0.2);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        alignment: Alignment.topCenter,
        //transformAlignment: Alignment.center,
        decoration: BoxDecoration(
            color: _hovering ? Colors.black54 : Colors.white10,
            shape: BoxShape.circle,
            border: Border.all(
                color: _hovering
                    ? KColors.getPrimaryColor().withOpacity(0.4)
                    : Colors.transparent,
                width: 2),
            boxShadow: [
              BoxShadow(
                color: _hovering ? hoverColor : nonHoverColor,
                blurRadius: 5,
                spreadRadius: 5,
              )
            ]),
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}

class TranslateMenuItemColorOnHover extends StatefulWidget {
  final Widget child;

  TranslateMenuItemColorOnHover({Key key, this.child}) : super(key: key);

  @override
  _TranslateMenuItemColorOnHoverState createState() =>
      _TranslateMenuItemColorOnHoverState();
}

class _TranslateMenuItemColorOnHoverState
    extends State<TranslateMenuItemColorOnHover> {
  final nonHoverColor = Colors.transparent;
  final hoverColor = KColors.getPrimaryColor().withOpacity(0.1);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 10),
        //width: 300,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: _hovering ? Colors.black54 : nonHoverColor,
            border: Border.all(
                color: _hovering
                    ? KColors.getPrimaryColor().withOpacity(0.1)
                    : nonHoverColor,
                width: 1),
            boxShadow: [
              BoxShadow(
                color: _hovering ? hoverColor : nonHoverColor,
                blurRadius: 20,
                spreadRadius: 20,
              )
            ]),
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}
