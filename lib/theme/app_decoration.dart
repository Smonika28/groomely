import 'package:flutter/material.dart';
import 'package:groumally/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillOrangeA200 => BoxDecoration(
        color: ColorConstant.orangeA200,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get outlineGray50001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray50001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGreenA700 => BoxDecoration(
        color: ColorConstant.greenA700,
      );
  static BoxDecoration get txtFillLightblue400 => BoxDecoration(
        color: ColorConstant.lightBlue400,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.gray200,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get fillAmber100 => BoxDecoration(
        color: ColorConstant.amber100,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillGray20087 => BoxDecoration(
        color: ColorConstant.gray20087,
      );
  static BoxDecoration get outlineGray700 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray700,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder27 = BorderRadius.circular(
    getHorizontalSize(
      27,
    ),
  );

  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6,
    ),
  );

  static BorderRadius roundedBorder56 = BorderRadius.circular(
    getHorizontalSize(
      56,
    ),
  );

  static BorderRadius roundedBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3,
    ),
  );

  static BorderRadius customBorderBL200 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        200,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        200,
      ),
    ),
  );

  static BorderRadius customBorderTL28 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        28,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        28,
      ),
    ),
  );

  static BorderRadius txtCustomBorderTL28 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        28,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        28,
      ),
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
