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
  final Map<String, Marker> markers;

  const DisplayPolylinesEvent(this.polylnes, this.markers);
}
