import 'package:flutter/material.dart';
import 'package:groumally/core/app_export.dart';
import 'package:groumally/presentation/booking_history_screen/booking_history_screen.dart';
import 'package:groumally/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:groumally/presentation/manage_services_container_page/manage_services_container_page.dart';
import 'package:groumally/presentation/profile/profile_screen.dart';
import 'package:groumally/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ManageServicesContainer1Screen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.dashboardScreen,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardScreen;
      case BottomBarEnum.Manageservice:
        return AppRoutes.manageServicesContainerPage;
      case BottomBarEnum.Bookinghistory:
        return AppRoutes.bookingHistoryScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.userProfileScreen;
      default:
        return "/";
    }
  }
  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.manageServicesContainerPage:
        return ManageServicesContainerPage();
       case AppRoutes.dashboardScreen:
       return DashboardScreen();
       case AppRoutes.bookingHistoryScreen:
       return BookingHistoryScreen();
       case AppRoutes.userProfileScreen:
       return UserProfileScreen();
      default:
        return DefaultWidget();
    }
  }
}
