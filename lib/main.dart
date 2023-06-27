import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groumally/feature/booking/bloc/booking_history_bloc.dart';
import 'package:groumally/feature/booking/widgets/booking_history_invocie.dart';
import 'package:groumally/feature/dashboard_screen/bloc/home_view_bloc.dart';
import 'package:groumally/feature/login/bloc/seller_login_bloc.dart';
import 'package:groumally/feature/profile/bloc/user_profile_bloc.dart';
import 'package:groumally/feature/service/add_service_screen/bloc/fetch_all_service_bloc.dart';
import 'package:groumally/feature/service/manage_service/bloc/manage_service_bloc.dart';
import 'package:groumally/routes/app_routes.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SellerLoginBloc>(create: (context) => SellerLoginBloc()),
        BlocProvider<ManageServiceBloc>(
            create: (context) => ManageServiceBloc()),
        BlocProvider<BookingHistoryBloc>(
            create: (context) => BookingHistoryBloc()),
        BlocProvider<FetchAllServiceBloc>(
            create: (context) => FetchAllServiceBloc()),
        BlocProvider<HomeViewBloc>(create: (context) => HomeViewBloc()),
        BlocProvider<UserProfileBloc>(create:(context)=>UserProfileBloc()),
        BlocProvider<FetchAllFieldBloc>(create: (context)=>FetchAllFieldBloc())
      ],
      child: MaterialApp(
        theme: ThemeData(
          visualDensity: VisualDensity.standard,
        ),
        title: 'grooumelly',
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.loginScreen,
        routes: AppRoutes.routes,
        // home: BookingHistoryInvoce(),
      ),
    );
  }
}
