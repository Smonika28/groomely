import 'package:groumally/presentation/booking_details_screen/booking_details_screen.dart';

import '../booking_history_screen/widgets/booking_history_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:groumally/core/app_export.dart';
import 'package:groumally/presentation/manage_services_container_page/manage_services_container_page.dart';
import 'package:groumally/widgets/app_bar/appbar_image.dart';
import 'package:groumally/widgets/app_bar/appbar_title.dart';
import 'package:groumally/widgets/app_bar/custom_app_bar.dart';
import 'package:groumally/widgets/custom_bottom_bar.dart';
import 'package:groumally/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class BookingHistoryScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56,
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "Booking History",
          ),
          actions: [
            AppbarImage(
              height: getSize(
                13,
              ),
              width: getSize(
                13,
              ),
              svgPath: ImageConstant.imgSearch,
              margin: getMargin(
                left: 15,
                top: 25,
                right: 16,
                bottom: 2,
              ),
            ),
            AppbarImage(
              height: getVerticalSize(
                16,
              ),
              width: getHorizontalSize(
                15,
              ),
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 11,
                top: 24,
                right: 31,
              ),
            ),
          ],
          styleType: Style.bgShadowBlack90014,
        ),
        body: Container(
          padding: getPadding(
            left: 15,
            top: 19,
            right: 15,
            bottom: 19,
          ),
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 6,
                        bottom: 2,
                      ),
                      child: Text(
                        "Select booking date",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterLight12,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgCalculator,
                      height: getVerticalSize(
                        24,
                      ),
                      width: getHorizontalSize(
                        22,
                      ),
                      margin: getMargin(
                        left: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    top: 13,
                  ),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: getVerticalSize(
                          7,
                        ),
                      );
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>BookingDetailsScreen()));
                        },
                        child: BookingHistoryItemWidget());
                    },
                  ),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
