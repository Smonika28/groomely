import 'package:flutter/material.dart';
import 'package:groumally/core/app_export.dart';
import 'package:groumally/feature/booking/model/booking_history.dart';
import 'package:groumally/widgets/custom_button.dart';
import 'package:groumally/widgets/invoice/pdfexport/pdf_previcew.dart';

class BookingDetailsScreen extends StatelessWidget {
  Data bookingHistoryData;
  BookingDetailsScreen({required this.bookingHistoryData});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: AppBar(
              leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios, color: Colors.black)),
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text("Booking Details",
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.black,
                    ))
              ],
            ),
            body: SingleChildScrollView(
                padding: getPadding(top: 7),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(
                              left: 160, top: 156, right: 160, bottom: 156),
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
                          padding: getPadding(left: 15, top: 14, right: 15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Booking Details".toUpperCase(),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16Black900),
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
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      print("chp testing");
                                                      PopupMenuButton(
                                                        child:
                                                            CustomImageView(
                                                          svgPath:
                                                              ImageConstant
                                                                  .imgFilter,
                                                          height:
                                                              getVerticalSize(
                                                            18,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            16,
                                                          ),
                                                          margin: getMargin(
                                                            top: 4,
                                                            bottom: 2,
                                                          ),
                                                        ),
                                                        itemBuilder:
                                                            (context) {
                                                          return List
                                                              .generate(1,
                                                                  (index) {
                                                            return PopupMenuItem(
                                                                child:
                                                                    Container(
                                                              width: 250,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          50)),
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "Completed"),
                                                                  Text(
                                                                      "Pendding"),
                                                                  Text(
                                                                      "InProgress")
                                                                ],
                                                              ),
                                                            ));
                                                          });
                                                        },
                                                      );
                                                    },
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
                                                            "${bookingHistoryData.status}",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign
                                                                    .left,
                                                            style: AppStyle
                                                                .txtInterRegular14WhiteA700)),
                                                  )),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 6),
                                                  child: Text(
                                                      "customer nAME"
                                                          .toUpperCase(),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 2),
                                                  child: Text(
                                                      "${bookingHistoryData.name}",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 23),
                                                  child: Text(
                                                      "Contact details"
                                                          .toUpperCase(),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 3),
                                                  child: Text(
                                                      "${bookingHistoryData.email}",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 4),
                                                  child: Text(
                                                      "${bookingHistoryData.phone}",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 23),
                                                  child: Text(
                                                      "booking date"
                                                          .toUpperCase(),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 3),
                                                  child: Text(
                                                      "${bookingHistoryData.bookingDate}",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 22),
                                                  child: Text(
                                                      "booking time"
                                                          .toUpperCase(),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 10),
                                                  child: Text(
                                                      "${bookingHistoryData.bookingTimeId}",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26, top: 22),
                                                  child: Text(
                                                      "Amount"
                                                          .toUpperCase(),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26,
                                                      top: 9,
                                                      bottom: 20),
                                                  child: Text(
                                                      "${bookingHistoryData.amount}",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
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
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(top: 5),
                                                  child: Text(
                                                      "Service Name"
                                                          .toUpperCase(),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12Black900)),
                                              Padding(
                                                  padding:
                                                      getPadding(top: 2),
                                                  child: Text(
                                                      "${bookingHistoryData.service?.additionalService?.name}",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding:
                                                      getPadding(top: 11),
                                                  child: Text(
                                                      "Service Category"
                                                          .toUpperCase(),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12Black900)),
                                              Padding(
                                                  padding:
                                                      getPadding(top: 2),
                                                  child: Text(
                                                      "${bookingHistoryData.service?.category?.name}",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding:
                                                      getPadding(top: 11),
                                                  child: Text(
                                                      "Duration"
                                                          .toUpperCase(),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding:
                                                      getPadding(top: 2),
                                                  child: Text(
                                                      "${bookingHistoryData.service?.duration}",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding:
                                                      getPadding(top: 11),
                                                  child: Text(
                                                      "rate".toUpperCase(),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding:
                                                      getPadding(top: 9),
                                                  child: Text("390",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16)),
                                              Padding(
                                                  padding:
                                                      getPadding(top: 11),
                                                  child: Text(
                                                      "offer".toUpperCase(),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12)),
                                              Padding(
                                                  padding:
                                                      getPadding(top: 9),
                                                  child: Text("50%",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterLight16))
                                            ]))),
                                CustomButton(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PdfPreviewPage()));
                                    },
                                    height: getVerticalSize(55),
                                    text: "SEND INVOICE",
                                    margin: getMargin(
                                        left: 45, top: 48, right: 46))
                              ])))
                ]))));
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
