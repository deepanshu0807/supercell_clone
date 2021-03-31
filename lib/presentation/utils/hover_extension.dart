import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'translate_on_hover.dart';

extension HoverExtensions on Widget {
  static final appContainer =
      html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,
      onHover: (event) {
        appContainer.style.cursor = 'pointer';
      },
      onExit: (event) {
        appContainer.style.cursor = 'default';
      },
    );
  }

  Widget get moveUpOnHover {
    return TranslateUpOnHover(
      child: this,
    );
  }

  Widget get moveRightOnHover {
    return TranslateRightOnHover(
      child: this,
    );
  }

  Widget get moveDownOnHover {
    return TranslateDownOnHover(
      child: this,
    );
  }

  Widget get moveLeftOnHover {
    return TranslateLeftOnHover(
      child: this,
    );
  }

  Widget get changeShadowColorOnHover {
    return TranslateColorOnHover(
      child: this,
    );
  }

  Widget get changeMenuItemColorOnHover {
    return TranslateMenuItemColorOnHover(
      child: this,
    );
  }
}
