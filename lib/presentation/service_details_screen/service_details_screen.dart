import 'package:flutter/material.dart';
import 'package:groumally/core/app_export.dart';
import 'package:groumally/presentation/edit_details_screen/edit_details_screen.dart';
import 'package:groumally/widgets/custom_floating_button.dart';

class ServiceDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: AppBar(),
            body: Container(
                height: getVerticalSize(807),
                width: double.maxFinite,
                decoration: AppDecoration.fillGray200,
                child: Column(children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(left: 15, top: 17, right: 15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        decoration: AppDecoration.fillGray200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder6),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: double.maxFinite,
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 103,
                                                          top: 9,
                                                          right: 103,
                                                          bottom: 9),
                                                      decoration: AppDecoration
                                                          .fillOrangeA200
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder6),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "Service name"
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
                                                                padding:
                                                                    getPadding(
                                                                        top: 4),
                                                                child: Text(
                                                                    "Artificial hair extensions",
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
                                                  padding: getPadding(
                                                      left: 26, top: 15),
                                                  child: Text(
                                                      "Category".toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 2),
                                                  child: Text("Men",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 20),
                                                  child: Text(
                                                      "service type"
                                                          .toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 3),
                                                  child: Text("Styling",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 19),
                                                  child: Text(
                                                      "duration".toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 6),
                                                  child: Text("1 hr 5 mins",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 16),
                                                  child: Text(
                                                      "rate".toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 6),
                                                  child: Text("115",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 16),
                                                  child: Text(
                                                      "offer".toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 6),
                                                  child: Text("15%",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 16),
                                                  child: Text(
                                                      "review".toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 9),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgStar,
                                                        height:
                                                            getVerticalSize(12),
                                                        width:
                                                            getHorizontalSize(
                                                                13),
                                                        margin: getMargin(
                                                            top: 1, bottom: 1)),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 6),
                                                        child: Text(
                                                            "4.84 (209.2K) ",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterLight12))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 23),
                                                  child: Text(
                                                      "service Description"
                                                          .toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          340),
                                                      margin: getMargin(
                                                          left: 26,
                                                          top: 9,
                                                          right: 17,
                                                          bottom: 30),
                                                      child: Text(
                                                          "Lorem ipsum dolor sit amet consectetur. Vulputate a egestas consequat amet lectus diam sit. Ullamcorper dapibus nulla sit sed ullamcorper ultricies pretium interdum diam. Dolor at cursus turpis id convallis. Nisi mi cursus erat leo sit purus. Pellentesque pretium mauris semper ut non quisque viverra tristique eu.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterLight12)))
                                            ]))),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomFloatingButton(
                                      child: Icon(Icons.edit),
                                      onTap: () {
                                        Navigator.push(context,MaterialPageRoute(builder: (context)=>EditDetailsScreen()));
                                      },
                                    ),
                                    SizedBox(width: 20),
                                    CustomFloatingButton(
                                      child: Icon(Icons.delete),
                                      onTap: () {},
                                    ),
                                  ],
                                )
                              ])))
                ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
