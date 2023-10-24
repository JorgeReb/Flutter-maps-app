part of 'location_bloc.dart';

abstract class LocationEvent extends Equatable {
  const LocationEvent();

  @override
  List<Object> get props => [];
}


class OnNewUserLocaationEvent extends LocationEvent {
  final LatLng newLocation;
  const OnNewUserLocaationEvent(this.newLocation);
}

class OnStartFollowingUser extends LocationEvent{}
class OnStopFollowingUser extends LocationEvent{}
