import 'package:groumally/core/api/api_string.dart';
import 'package:groumally/feature/booking/model/booking_history.dart';
import 'package:groumally/utils/APi/api_provider.dart';

class BookingHistoryRepo{
  final apiProvider = ApiProvider();
  BookingHistoryModel bookingHistoryModel = BookingHistoryModel();
  Future<dynamic> fetchBookingHistory(){
    return apiProvider.dataProcessor({},bookingHistoryModel, Apis.appointmentList);
  }
}
class NetworkError extends Error {}
