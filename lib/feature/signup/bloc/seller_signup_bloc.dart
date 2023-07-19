import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groomely_seller/feature/signup/model/seller_signup_res_model.dart';

import '../../../core/api/api_string.dart';
import '../../../utils/APi/api_provider.dart';

part 'seller_signup_event.dart';

part 'seller_signup_state.dart';

class SellerSignupBloc extends Bloc<SellerSignupEvent, SellerSignupState> {
  SellerSignupBloc() : super(SellerSignupStateInitial()) {
    SellerSignupModel sellerSignupModel = SellerSignupModel();
    ApiProvider apiProvider = ApiProvider();

    on<SellerSignupSubmittedEvent>((event, emit) async {
      Map<String, dynamic> requestModel = {
        'first_name': event.firstName.toString(),
        'last_name': event.lastName.toString(),
        'email': event.email.toString(),
        'phone': event.phone.toString(),
        'zipcode': event.zipcode.toString(),
        'password': event.password.toString(),
        'confirm_password': event.confirmPassword.toString(),
        'user_type': "BUSINESS_OWNER",
      };

      try {
        emit(SellerSignupStateLoading());

        final myData = await apiProvider.dataProcessor(
            requestModel, sellerSignupModel, Apis.signup);
        if (myData != null && myData.status == true) {
          print('update  profile Response ---------------------- ${myData}');
          emit(SellerSignupStateLoaded(myData));
        } else {
          emit(SellerSignupStateFailed(myData.toString()));
        }
      } catch (e) {
        emit(SellerSignupStateFailed(e.toString()));
      }
    });
  }
}
