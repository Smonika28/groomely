import 'package:groumally/presentation/add_service_screen/add_service_screen.dart';
import 'package:groumally/presentation/service_details_screen/service_details_screen.dart';

import '../manage_services_container_page/widgets/listservicename_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:groumally/core/app_export.dart';
import 'package:groumally/widgets/app_bar/appbar_image.dart';
import 'package:groumally/widgets/app_bar/appbar_title.dart';
import 'package:groumally/widgets/app_bar/custom_app_bar.dart';
import 'package:groumally/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class ManageServicesContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56,
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "Manage Services",
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
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 13,
                right: 18,
                top: 40
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Service List",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold20,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgFilter,
                    height: getVerticalSize(
                      18,
                    ),
                    width: getHorizontalSize(
                      16,
                    ),
                    margin: getMargin(
                      top: 4,
                      bottom: 2,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: getPadding(
                  left: 15,
                  top: 24,
                  right: 15,
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
                        13,
                      ),
                    );
                  },
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ServiceDetailsScreen()));
                      },
                      child: ListservicenameItemWidget());
                  },
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: CustomFloatingButton(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddServiceScreen()));
          },
          height: 71,
          width: 71,
          child: CustomImageView(
            svgPath: ImageConstant.imgPlus,
            height: getVerticalSize(
              35.5,
            ),
            width: getHorizontalSize(
              35.5,
            ),
          ),
        ),
      ),
    );
  }
}
