import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groomely_seller/core/app_export.dart';
import 'package:groomely_seller/feature/login/bloc/seller_login_bloc.dart';
import 'package:groomely_seller/feature/signup/presentaion/signup_screen.dart';
import 'package:groomely_seller/utils/Toast/app_toast.dart';
import 'package:groomely_seller/widgets/custom_button.dart';
import 'package:groomely_seller/widgets/custom_radio_button.dart';
import 'package:groomely_seller/widgets/custom_text_form_field.dart';

import '../../../presentation/manage_services_container1_screen/manage_services_container1_screen.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String radioGroup = "";

  List<String> radioList = ["lbl_seller", "lbl_customer"];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                hintText: "user Name",
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
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Padding(
              //     padding: getPadding(
              //       left: 65,
              //       top: 24,
              //     ),
              //     child: Row(
              //       children: [
              //         Padding(
              //           padding: getPadding(
              //             top: 2,
              //             bottom: 1,
              //           ),
              //           child: Text(
              //             "Are you",
              //             overflow: TextOverflow.ellipsis,
              //             textAlign: TextAlign.left,
              //             style: AppStyle.txtInterRegular14,
              //           ),
              //         ),
              //         Padding(
              //           padding: getPadding(
              //             left: 26,
              //           ),
              //           child: Row(
              //             children: [
              //               CustomRadioButton(
              //                 text: "Seller",
              //                 iconSize: getHorizontalSize(
              //                   21,
              //                 ),
              //                 value: radioList[0],
              //                 groupValue: radioGroup,
              //                 fontStyle: RadioFontStyle.InterRegular14,
              //                 onChange: (value) {
              //                   radioGroup = value;
              //                 },
              //               ),
              //               CustomRadioButton(
              //                 text: "Customer",
              //                 iconSize: getHorizontalSize(
              //                   21,
              //                 ),
              //                 value: radioList[1],
              //                 groupValue: radioGroup,
              //                 margin: getMargin(
              //                   left: 17,
              //                 ),
              //                 fontStyle: RadioFontStyle.InterRegular14,
              //                 onChange: (value) {
              //                   radioGroup = value;
              //                 },
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              CustomTextFormField(
                focusNode: FocusNode(),
                isObscureText: true,
                autofocus: true,
                controller: passwordController,
                hintText: "password",
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
              BlocListener<SellerLoginBloc, SellerLoginState>(
                listener: (context, state) {
                  print("state --> $state");
                  if (state is SellerLoginLoadedState) {
                    ToastMessage().toast(
                        context: context,
                        message: state.responseModel.message.toString(),
                        messageColor: Colors.white,
                        background: Colors.green);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ManageServicesContainer1Screen()),
                        (route) => false);
                  } else if (state is SellerLoginErrorState) {
                    ToastMessage().toast(
                        duration: 5000,
                        context: context,
                        message: state.errorMsg.toString(),
                        messageColor: Colors.white,
                        background: Colors.redAccent);
                  }
                },
                child: CustomButton(
                  onTap: () {
                    BlocProvider.of<SellerLoginBloc>(context).add(
                        SellerLoginEvents(
                            userName: emailController.text.trim(),
                            password: passwordController.text.trim()));
                    //  Navigator.push(context, MaterialPageRoute(builder: (context)=>ManageServicesContainer1Screen()));
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
                          text: "Don’t Have an  account?  ",
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
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUPScreen()),
                                  (route) => false);
                            },
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
            ],
          ),
        ),
      ),
    );
  }
}
