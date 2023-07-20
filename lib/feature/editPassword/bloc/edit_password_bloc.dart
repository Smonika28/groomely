//
//
//
//
//
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../core/api/api_string.dart';
// import '../../../utils/APi/api_provider.dart';
// import '../model/edit_password_response_model.dart';
// import 'edit_password_event.dart';
// import 'edit_password_state.dart';
//
// class EditPasswordBloc extends Bloc<EditPasswordEvent, EditPasswordState> {
//   EditPasswordBloc() : super(EditPasswordStateInitial()) {
//     EditPasswordResponseModel editPasswordModel = EditPasswordResponseModel();
//     ApiProvider apiProvider = ApiProvider();
//
//     on<EditPasswordSubmittedEvent>((event, emit) async {
//       Map<String, dynamic> requestModel = {
//         'shop_name': event.shopName.toString(),
//         'name': event.shopOwnerName.toString(),
//         //'email': event.email.toString(),
//         'phone': event.phone.toString(),
//         'shop_address': event.address.toString(),
//       };
//
//       try {
//         emit(EditPasswordStateLoading());
//
//         // final response = apiCallingClass.updateProfile(stShopName: event.shopName,stShopEmail: event.email, stOwnerName: event.shopOwnerName, stShopPhone: event.phone, stShopAddress: event.address);
//         final myData = await apiProvider
//             .dataProcessor(requestModel,editPasswordModel, Apis.sellerUpdateProfile);
//         if(myData!= null && myData.status == true) {
//           print('update  profile Response ---------------------- ${myData}');
//           emit(EditPasswordStateLoaded(myData));
//         }
//         else{
//           emit(EditPasswordStateFailed(myData.toString()));
//         }
//
//       } catch (e) {
//         emit(EditPasswordStateFailed(e.toString()));
//       }
//
//
//     });
//   }
// }