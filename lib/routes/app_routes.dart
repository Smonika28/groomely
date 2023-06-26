import 'package:flutter/material.dart';
import 'package:groumally/feature/login/presentation/login_screen.dart';
import 'package:groumally/feature/profile/presentation/profile_screen.dart';
import 'package:groumally/presentation/signup_screen/signup_screen.dart';
import 'package:groumally/feature/dashboard_screen/presentation/dashboard_screen.dart';
import 'package:groumally/presentation/manage_services_container1_screen/manage_services_container1_screen.dart';
// import 'package:groumally/presentation/service_details_screen/service_details_screen.dart';
import 'package:groumally/presentation/edit_details_screen/edit_details_screen.dart';
import 'package:groumally/feature/service/add_service_screen/presentation/add_service_screen.dart';
import 'package:groumally/feature/booking/presentation/booking_history_screen.dart';


class AppRoutes {
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';
  static const String dashboardScreen = '/dashboard_screen';
  static const String manageServicesContainerPage =
      '/manage_services_container_page';
  static const String manageServicesContainer1Screen =
      '/manage_services_container1_screen';
  static const String serviceDetailsScreen = '/service_details_screen';

  static const String editDetailsScreen = '/edit_details_screen';

  static const String addServiceScreen = '/add_service_screen';

  static const String bookingHistoryScreen = '/booking_history_screen';

  static const String bookingDetailsScreen = '/booking_details_screen';

  static const String bookingHistoryOneScreen = '/booking_history_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String userProfileScreen  = '/user_profile_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    manageServicesContainer1Screen: (context) =>
        ManageServicesContainer1Screen(),
    // serviceDetailsScreen: (context) => ServiceDetailsScreen(),
    editDetailsScreen: (context) => EditDetailsScreen(),
    addServiceScreen: (context) => AddServiceScreen(),
    bookingHistoryScreen: (context) => BookingHistoryScreen(),
    // bookingDetailsScreen: (context) => BookingDetailsScreen(),
    userProfileScreen :(context) => UserProfileScreen()
  };
}
