import 'package:flutter/material.dart';
import 'package:groumally/theme/app_decoration.dart';
import 'package:groumally/theme/app_style.dart';
import 'package:groumally/utils/image_constant.dart';
import 'package:groumally/utils/size_utils.dart';
import 'package:groumally/widgets/app_bar/custom_app_bar.dart';
import 'package:groumally/widgets/custom_image_view.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 40,
        title: Text("Profile"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            child: Container(
              padding: getPadding(
                left: 121,
                top: 23,
                right: 121,
                bottom: 23,
              ),
              decoration: AppDecoration.fillGray900,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse7,
                    height: getSize(
                      113,
                    ),
                    width: getSize(
                      113,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        56,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Text(
                      "ABCD Barber Shop".toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: getVerticalSize(
                            17,
                          ),
                          width: getHorizontalSize(
                            18,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                          ),
                          child: Text(
                            "4.84 (209.2K) ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterLight14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      "Loup City, Nebraska 68853, USA",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular11,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: getPadding(top: 14),
              child: Text("Service Details".toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold16Black900)),
          Container(
              width: double.maxFinite,
              child: Container(
                  width: getHorizontalSize(384),
                  margin: getMargin(top: 13),
                  padding: getPadding(left: 26, top: 24, right: 26, bottom: 24),
                  decoration: AppDecoration.fillGray200
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding: getPadding(top: 5),
                            child: Text("Service Name".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold12Black900)),
                        Padding(
                            padding: getPadding(top: 2),
                            child: Text("Crew Cut",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterLight16)),
                        Padding(
                            padding: getPadding(top: 11),
                            child: Text("Service Category".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold12Black900)),
                        Padding(
                            padding: getPadding(top: 2),
                            child: Text("Children",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterLight16)),
                        Padding(
                            padding: getPadding(top: 11),
                            child: Text("Duration".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold12)),
                        Padding(
                            padding: getPadding(top: 2),
                            child: Text("02 hr 00 min",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterLight16)),
                        Padding(
                            padding: getPadding(top: 11),
                            child: Text("rate".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold12)),
                        Padding(
                            padding: getPadding(top: 9),
                            child: Text("390",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterLight16)),
                        Padding(
                            padding: getPadding(top: 11),
                            child: Text("offer".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold12)),
                        Padding(
                            padding: getPadding(top: 9),
                            child: Text("50%",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterLight16))
                      ]))),
        ],
      ),
    );
  }
}
