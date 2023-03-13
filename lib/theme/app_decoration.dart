import 'package:flutter/material.dart';
import 'package:zero_degree_lab_s_calculator/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get gradientLightgreen200BlueA700 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.lightGreen200,
            ColorConstant.blue400,
            ColorConstant.blueA700,
          ],
        ),
      );
  static BoxDecoration get fillPurple90001 => BoxDecoration(
        color: ColorConstant.purple90001,
      );
  static BoxDecoration get gradientDeeppurple600CyanA400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.deepPurple600,
            ColorConstant.cyanA400,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA70061 => BoxDecoration(
        color: ColorConstant.whiteA70061,
      );
  static BoxDecoration get outlineBlack9004c => BoxDecoration(
        color: ColorConstant.purple90001,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9004c,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get gradientCyan600Deeppurple500 => BoxDecoration(
        color: ColorConstant.blueA400,
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.cyan600,
            ColorConstant.deepPurple500,
          ],
        ),
      );
  static BoxDecoration get fillDeeppurple600 => BoxDecoration(
        color: ColorConstant.deepPurple600,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: ColorConstant.gray10001,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBlueA400 => BoxDecoration(
        color: ColorConstant.blueA400,
      );
  static BoxDecoration get gradientCyan600Deeppurple5001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.cyan600,
            ColorConstant.deepPurple500,
          ],
        ),
      );
  static BoxDecoration get fillBluegray800 => BoxDecoration(
        color: ColorConstant.blueGray800,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );
}
