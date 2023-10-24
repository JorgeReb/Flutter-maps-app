part of 'map_bloc.dart';

class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object> get props => [];
}

class OnMapInitializatedEvent extends MapEvent {
  final GoogleMapController controller;
  const OnMapInitializatedEvent(this.controller);
}

class OnStopFollowingUserEvent extends MapEvent{}
class OnStartFollowingUserEvent extends MapEvent{}

class UpdateUserPolylineEvent extends MapEvent {
  final List<LatLng> userLocations;
  const UpdateUserPolylineEvent(this.userLocations);
}

class OnToggleUserRoute extends MapEvent{}

class DisplayPolylinesEvent extends MapEvent{
  final Map<String, Polyline> polylnes;

  DisplayPolylinesEvent(this.polylnes);
}
