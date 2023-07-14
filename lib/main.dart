// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:groomely_seller/feature/booking/bloc/booking_history_bloc.dart';
// import 'package:groomely_seller/feature/dashboard_screen/bloc/home_view_bloc.dart';
// import 'package:groomely_seller/feature/dashboard_screen/presentation/dashboard_screen.dart';
// import 'package:groomely_seller/feature/login/bloc/seller_login_bloc.dart';
// import 'package:groomely_seller/feature/onboarding/presentation/splash_screen/splash_screen.dart';
// import 'package:groomely_seller/feature/profile/bloc/user_profile_bloc.dart';
// import 'package:groomely_seller/feature/service/add_service_screen/bloc/fetch_all_service_bloc.dart';
// import 'package:groomely_seller/feature/service/manage_service/bloc/manage_service_bloc.dart';
// import 'package:groomely_seller/presentation/manage_services_container1_screen/manage_services_container1_screen.dart';
// import 'package:groomely_seller/routes/app_routes.dart';
// import 'package:groomely_seller/utils/storage/local_storage.dart';
// import 'feature/signup/bloc/seller_signup_bloc.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   LocalStorageService localStorageService = LocalStorageService();
//   String token =  await localStorageService.getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY)??"";
//
//   runApp( MyApp(token: token,));
// }
//
// class MyApp extends StatelessWidget {
//   final String token;
//   const MyApp({Key? key, required this.token}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider<SellerLoginBloc>(create: (context) => SellerLoginBloc()),
//         BlocProvider<SellerSignupBloc>(create: (context) => SellerSignupBloc()),
//         BlocProvider<ManageServiceBloc>(
//             create: (context) => ManageServiceBloc()),
//         BlocProvider<BookingHistoryBloc>(
//             create: (context) => BookingHistoryBloc()),
//         BlocProvider<FetchAllServiceBloc>(
//             create: (context) => FetchAllServiceBloc()),
//         BlocProvider<HomeViewBloc>(create: (context) => HomeViewBloc()),
//         BlocProvider<UserProfileBloc>(create: (context) => UserProfileBloc()),
//         BlocProvider<FetchAllFieldBloc>(
//             create: (context) => FetchAllFieldBloc())
//
//         // BlocProvider<AddServiceBloc>(
//         //     create: (context) =>
//         //         AddServiceBloc()),
//       ],
//       child: MaterialApp(
//         theme: ThemeData(
//             visualDensity: VisualDensity.standard, useMaterial3: true),
//         title: 'Groomely',
//         debugShowCheckedModeBanner: false,
//
//         // home: const LoginScreen(),
//         home:token.isEmpty? SplashScreen():ManageServicesContainer1Screen(),
//
//         // initialRoute: AppRoutes.SplashScreen2(),
//         // routes: AppRoutes.routes,
//
//
//
//
//         // home: MyTest(),
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groomely_seller/feature/booking/bloc/booking_history_bloc.dart';
import 'package:groomely_seller/feature/dashboard_screen/bloc/home_view_bloc.dart';
import 'package:groomely_seller/feature/login/bloc/seller_login_bloc.dart';
import 'package:groomely_seller/feature/onboarding/presentation/splash_screen/splash_screen.dart';
import 'package:groomely_seller/feature/profile/bloc/user_profile_bloc.dart';
import 'package:groomely_seller/feature/service/add_service_screen/bloc/fetch_all_service_bloc.dart';
import 'package:groomely_seller/feature/service/manage_service/bloc/manage_service_bloc.dart';
import 'package:groomely_seller/routes/app_routes.dart';
import 'feature/signup/bloc/seller_signup_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<SellerLoginBloc>(create: (context) => SellerLoginBloc()),
        BlocProvider<SellerSignupBloc>(create: (context) => SellerSignupBloc()),
        BlocProvider<ManageServiceBloc>(
            create: (context) => ManageServiceBloc()),
        BlocProvider<BookingHistoryBloc>(
            create: (context) => BookingHistoryBloc()),
        BlocProvider<FetchAllServiceBloc>(
            create: (context) => FetchAllServiceBloc()),
        BlocProvider<HomeViewBloc>(create: (context) => HomeViewBloc()),
        BlocProvider<UserProfileBloc>(create: (context) => UserProfileBloc()),
        BlocProvider<FetchAllFieldBloc>(
            create: (context) => FetchAllFieldBloc())
      ],
      child: MaterialApp(
        theme: ThemeData(
            visualDensity: VisualDensity.standard, useMaterial3: true),
        title: 'Groomely',
        debugShowCheckedModeBanner: false,

        // home: const LoginScreen(),
        home: SplashScreen(),

        // initialRoute: AppRoutes.SplashScreen2(),
        // routes: AppRoutes.routes,
        // home: MyTest(),
      ),
    );
  }
}