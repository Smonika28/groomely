import 'package:flutter/material.dart';
import 'package:groumally/core/app_export.dart';
import 'package:groumally/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:groumally/widgets/custom_button.dart';
import 'package:groumally/widgets/custom_radio_button.dart';
import 'package:groumally/widgets/custom_text_form_field.dart';

import '../manage_services_container1_screen/manage_services_container1_screen.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  String radioGroup = "";

  List<String> radioList = ["lbl_seller", "lbl_customer"];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSideviewmang,
                  height: getVerticalSize(
                    342,
                  ),
                  width: getHorizontalSize(
                    414,
                  ),
                  radius: BorderRadius.only(
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
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    273,
                  ),
                  margin: getMargin(
                    top: 32,
                  ),
                  child: Text(
                    "Find Your Barber to Get Better Looks",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtInterMedium24,
                  ),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  autofocus: true,
                  controller: emailController,
                  hintText: "adamsmith01@gmail.com",
                  margin: getMargin(
                    left: 60,
                    top: 23,
                    right: 61,
                  ),
                  variant: TextFormFieldVariant.OutlineOrangeA200,
                  fontStyle: TextFormFieldFontStyle.InterRegular14,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 65,
                      top: 24,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 1,
                          ),
                          child: Text(
                            "Are you",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular14,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 26,
                          ),
                          child: Row(
                            children: [
                              CustomRadioButton(
                                text: "Seller",
                                iconSize: getHorizontalSize(
                                  21,
                                ),
                                value: radioList[0],
                                groupValue: radioGroup,
                                fontStyle: RadioFontStyle.InterRegular14,
                                onChange: (value) {
                                  radioGroup = value;
                                },
                              ),
                              CustomRadioButton(
                                text: "Customer",
                                iconSize: getHorizontalSize(
                                  21,
                                ),
                                value: radioList[1],
                                groupValue: radioGroup,
                                margin: getMargin(
                                  left: 17,
                                ),
                                fontStyle: RadioFontStyle.InterRegular14,
                                onChange: (value) {
                                  radioGroup = value;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    55,
                  ),
                  width: getHorizontalSize(
                    293,
                  ),
                  margin: getMargin(
                    top: 24,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 22,
                          ),
                          child: Text(
                            "Password",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular14,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: ColorConstant.gray700,
                              width: getHorizontalSize(
                                1,
                              ),
                            ),
                            borderRadius: BorderRadiusStyle.roundedBorder27,
                          ),
                          child: Container(
                            height: getVerticalSize(
                              55,
                            ),
                            width: getHorizontalSize(
                              293,
                            ),
                            padding: getPadding(
                              left: 20,
                              top: 21,
                              right: 20,
                              bottom: 21,
                            ),
                            decoration: AppDecoration.outlineGray700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder27,
                            ),
                            child: Stack(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgAlarm,
                                  height: getVerticalSize(
                                    12,
                                  ),
                                  width: getHorizontalSize(
                                    16,
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                  ),
                  child: Text(
                    "forgot Your Password?",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14OrangeA200,
                  ),
                ),
                CustomButton(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ManageServicesContainer1Screen()));
                  },
                  height: getVerticalSize(
                    55,
                  ),
                  text: "LOGIN",
                  margin: getMargin(
                    left: 60,
                    top: 60,
                    right: 61,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 98,
                      top: 9,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t Have an  c? ",
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: "SIGNUP NOW",
                            style: TextStyle(
                              color: ColorConstant.orangeA200,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 41,
                    bottom: 5,
                  ),
                  child: SizedBox(
                    width: getHorizontalSize(
                      94,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        4,
                      ),
                      thickness: getVerticalSize(
                        4,
                      ),
                      color: ColorConstant.gray9006c,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
