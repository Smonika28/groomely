// part of 'fetch_all_service_bloc.dart';
//
//
// abstract class FetchAllServiceEvent {}
// class FetchAllServiceEvents extends FetchAllServiceEvent{}
//
//
//
//
//
// abstract class FetchAllFieldEvent {}
// class ServiceDetailsFieldEvent extends FetchAllFieldEvent{
//   String serviceID;
//   ServiceDetailsFieldEvent({required this.serviceID});
// }
//
//
//



part of 'fetch_all_service_bloc.dart';


abstract class FetchAllServiceEvent {}
class FetchAllServiceEvents extends FetchAllServiceEvent{}

abstract class FetchAllFieldEvent {}
class ServiceDetailsFieldEvent extends FetchAllFieldEvent{
  String serviceID;
  ServiceDetailsFieldEvent({required this.serviceID});
}



abstract class AddAllServiceEvent {}
class AddAllServiceEvents extends AddAllServiceEvent{}





abstract class AddAllFieldEvent {}

// class ServiceDetailsFieldEvent extends AddAllFieldEvent{
//   String serviceID;
//   ServiceDetailsFieldEvent({required this.serviceID});
// }



