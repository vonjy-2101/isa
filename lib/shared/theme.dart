import 'dart:ui';
import 'package:flutter/material.dart';

class APPTHEMING{

  static Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  static Color blue        = _colorFromHex('#03A9F4');
  static Color blueClair   = _colorFromHex('#7DCFF4');
  static Color greyClair   = _colorFromHex('#E3E5E6');
  static Color grey        = _colorFromHex('#7c7d7d');
  static Color white       = _colorFromHex('#FFFFFF');
  static Color yellow      = _colorFromHex('#FFC107');
  static Color yellowClair = _colorFromHex('#C78D38');


  static Gradient gradient({
    required Color colorStart,
    required Color colorEnd
  })
  {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        colorStart.withOpacity(0.9),
        colorEnd.withOpacity(0.8),
      ],
    );
  }

  static Gradient AppGradient()
  {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        APPTHEMING.blueClair.withOpacity(0.9),
        APPTHEMING.blue.withOpacity(0.8)
      ],
    );
  }

}