import 'package:flutter/material.dart';
import 'package:groumally/feature/login/model/seller_login_res_model.dart';
import 'package:groumally/theme/app_decoration.dart';
import 'package:groumally/theme/app_style.dart';
import 'package:groumally/utils/image_constant.dart';
import 'package:groumally/utils/size_utils.dart';
import 'package:groumally/widgets/custom_image_view.dart';

class UserProfileScreen extends StatelessWidget {
   UserProfileScreen({Key? key}) : super(key: key);
  SellerLoginModel sellerLoginModel = SellerLoginModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("My Profile",style: TextStyle(fontSize:20,color: Colors.black)),
          actions: [
            IconButton(onPressed: (){}, icon:Icon(Icons.notifications,color: Colors.black,))
          ],
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            child: Container(
              padding: getPadding(
                left: 121,
                top: 30,
                right: 121,
                bottom: 30,
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
                      "${sellerLoginModel.data?.user?.shopName}".toUpperCase(),
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
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              width: double.maxFinite,
              child: Container(
                  width: getHorizontalSize(384),
                  margin: EdgeInsets.all(14),
                  padding: getPadding(left: 26, top: 24, right: 26, bottom: 24),
                  decoration: AppDecoration.fillGray200
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        contentField(
                            title: "shop owner name", subTitle: "${sellerLoginModel.data?.user?.name}"),
                        contentField(title: "shop name", subTitle: "Crew Cut"),
                        contentField(
                            title: "shop address", subTitle: "Crew Cut"),
                        contentField(title: "Email", subTitle: "Crew Cut"),
                        contentField(
                            title: "Phone number", subTitle: "Crew Cut"),
                        contentField(title: "password", subTitle: "Crew Cut"),
                      ]))),
        ],
      ),
    );
  }

  Widget contentField({required String title, required String subTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: getPadding(top: 11),
            child: Text(title.toUpperCase(),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold12)),
        Padding(
            padding: getPadding(top: 2),
            child: Text(subTitle,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterLight16)),
      ],
    );
  }
}
