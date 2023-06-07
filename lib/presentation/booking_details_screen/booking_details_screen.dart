import 'package:flutter/material.dart';
import 'package:groumally/core/app_export.dart';
import 'package:groumally/widgets/app_bar/appbar_image.dart';
import 'package:groumally/widgets/app_bar/appbar_title.dart';
import 'package:groumally/widgets/app_bar/custom_app_bar.dart';
import 'package:groumally/widgets/custom_button.dart';

class BookingDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(36),
                    width: getSize(36),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 12, top: 8, bottom: 12),
                    onTap: () {
                      onTapArrowleft3(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Booking Details"),
                actions: [
                  AppbarImage(
                      height: getSize(13),
                      width: getSize(13),
                      svgPath: ImageConstant.imgSearch,
                      margin:
                          getMargin(left: 15, top: 25, right: 16, bottom: 2)),
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(15),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 11, top: 24, right: 31))
                ],
                styleType: Style.bgShadowBlack90014),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 7),
                    child: Container(
                        height: getVerticalSize(1059),
                        width: double.maxFinite,
                        decoration: AppDecoration.fillGray200,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: getPadding(
                                      left: 160,
                                      top: 156,
                                      right: 160,
                                      bottom: 156),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 743),
                                            child: Divider(
                                                height: getVerticalSize(4),
                                                thickness: getVerticalSize(4),
                                                color: ColorConstant.gray9006c))
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding:
                                      getPadding(left: 15, top: 14, right: 15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Booking Details".toUpperCase(),
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterBold16Black900),
                                        Container(
                                            width: double.maxFinite,
                                            child: Container(
                                                width: getHorizontalSize(384),
                                                margin: getMargin(top: 13),
                                                decoration: AppDecoration
                                                    .fillGray200
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder6),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      91),
                                                              padding: getPadding(
                                                                  left: 11,
                                                                  top: 2,
                                                                  right: 11,
                                                                  bottom: 2),
                                                              decoration: AppDecoration
                                                                  .txtFillLightblue400
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .txtCustomBorderTL28),
                                                              child: Text(
                                                                  "Complete",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular14WhiteA700))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26, top: 6),
                                                          child: Text(
                                                              "customer nAME"
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold12)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26, top: 2),
                                                          child: Text(
                                                              "Adam Smith",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterLight16)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26,
                                                              top: 23),
                                                          child: Text(
                                                              "Contact details"
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold12)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26, top: 3),
                                                          child: Text(
                                                              "testuser@yopmail.com",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterLight16)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26, top: 4),
                                                          child: Text(
                                                              "9089097898",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterLight16)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26,
                                                              top: 23),
                                                          child: Text(
                                                              "booking date"
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold12)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26, top: 3),
                                                          child: Text(
                                                              "15 May, 2023",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterLight16)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26,
                                                              top: 22),
                                                          child: Text(
                                                              "booking time"
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold12)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26,
                                                              top: 10),
                                                          child: Text(
                                                              "3:00 pm - 4:00 pm",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterLight16)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26,
                                                              top: 22),
                                                          child: Text(
                                                              "Amount"
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold12)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26,
                                                              top: 9,
                                                              bottom: 20),
                                                          child: Text("500",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterLight16))
                                                    ]))),
                                        Padding(
                                            padding: getPadding(top: 14),
                                            child: Text(
                                                "Service Details".toUpperCase(),
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterBold16Black900)),
                                        Container(
                                            width: double.maxFinite,
                                            child: Container(
                                                width: getHorizontalSize(384),
                                                margin: getMargin(top: 13),
                                                padding: getPadding(
                                                    left: 26,
                                                    top: 24,
                                                    right: 26,
                                                    bottom: 24),
                                                decoration: AppDecoration
                                                    .fillGray200
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder6),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Text(
                                                              "Service Name"
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold12Black900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 2),
                                                          child: Text(
                                                              "Crew Cut",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterLight16)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 11),
                                                          child: Text(
                                                              "Service Category"
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold12Black900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 2),
                                                          child: Text(
                                                              "Children",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterLight16)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 11),
                                                          child: Text(
                                                              "Duration"
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold12)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 2),
                                                          child: Text(
                                                              "02 hr 00 min",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterLight16)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 11),
                                                          child: Text(
                                                              "rate"
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold12)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 9),
                                                          child: Text("390",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterLight16)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 11),
                                                          child: Text(
                                                              "offer"
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold12)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 9),
                                                          child: Text("50%",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterLight16))
                                                    ]))),
                                       
                                        CustomButton(
                                            height: getVerticalSize(55),
                                            text: "SEND INVOICE",
                                            margin: getMargin(
                                                left: 45, top: 48, right: 46))
                                      ])))
                        ]))))));
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
