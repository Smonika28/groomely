import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groumally/feature/booking/bloc/booking_history_bloc.dart';
import 'package:groumally/feature/login/bloc/seller_login_bloc.dart';
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
      ],
      child: MaterialApp(
        theme: ThemeData(
          visualDensity: VisualDensity.standard,
        ),
        title: 'groumally',
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.loginScreen,
        routes: AppRoutes.routes,
      ),
    );
  }
}
