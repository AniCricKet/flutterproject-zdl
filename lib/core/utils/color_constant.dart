import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color cyanA400 = fromHex('#00f0ff');

  static Color blueA400 = fromHex('#0f6eff');

  static Color blueA700 = fromHex('#0065ff');

  static Color deepPurple500 = fromHex('#6e21d1');

  static Color lightGreen200 = fromHex('#b7f8a7');

  static Color lightBlue600 = fromHex('#009fd4');

  static Color lightBlue400 = fromHex('#2ebef3');

  static Color purple90001 = fromHex('#3d1273');

  static Color deepPurple600 = fromHex('#6418c3');

  static Color deepPurpleA10001 = fromHex('#a365f4');

  static Color gray50061 = fromHex('#618f92a1');

  static Color whiteA7006101 = fromHex('#61ffffff');

  static Color black900 = fromHex('#000000');

  static Color purple900 = fromHex('#3c1273');

  static Color blueGray800 = fromHex('#2f3462');

  static Color deepPurpleA100 = fromHex('#a364f3');

  static Color black9004c = fromHex('#4c000000');

  static Color gray60061 = fromHex('#61757575');

  static Color whiteA70061 = fromHex('#61fdfdfd');

  static Color tealA200 = fromHex('#4df1c9');

  static Color gray100 = fromHex('#f7f7f7');

  static Color bluegray400 = fromHex('#888888');

  static Color gray10001 = fromHex('#f1f3f6');

  static Color whiteA70001 = fromHex('#fdfdfd');

  static Color blue400 = fromHex('#4c9dd7');

  static Color cyan600 = fromHex('#0fa8af');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
