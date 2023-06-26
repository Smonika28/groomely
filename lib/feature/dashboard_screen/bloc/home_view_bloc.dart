import 'package:bloc/bloc.dart';
import 'package:groumally/core/api/api_string.dart';
import 'package:groumally/feature/dashboard_screen/model/dhashview_model.dart';
import 'package:groumally/utils/APi/api_provider.dart';
import 'package:meta/meta.dart';

part 'home_view_event.dart';
part 'home_view_state.dart';

class HomeViewBloc extends Bloc<HomeViewEvent, HomeViewState> {
  HomeViewBloc() : super(HomeViewInitial()) {
    HomeViewModel homeViewModel = HomeViewModel();
    ApiProvider apiProvider = ApiProvider();
     on<FetchHomeViewEvents>((event, emit) async {
      try {
        emit(HomeViewLoadingState());
        final myData = await apiProvider
            .dataProcessor({},homeViewModel, Apis.homePage);
        print("my data--> $myData");
        if (myData != null && myData.status == true) {
          print("loaded--> ${myData.toJson()}");
          emit(HomeViewLoadedState(homeViewModel: myData));
        } else {
          emit(HomeViewErrorState(errorMsg: myData.toString()));
        }
      } catch (e) {
        emit(HomeViewErrorState(errorMsg: e.toString()));
      }
    });
  }
}
