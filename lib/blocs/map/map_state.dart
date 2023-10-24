part of 'map_bloc.dart';

class MapState extends Equatable {
  final bool isFollowingUser;
  final bool isMapInitializated;
  final bool showMyRoute;

  final Map<String, Polyline> polylines;
  final Map<String, Marker> markers;

  const MapState({
  this.isMapInitializated = false, 
  this.isFollowingUser = true, 
  this.showMyRoute = true,
  Map<String, Polyline>? polylines,
  Map<String, Marker>? markers,
  }) : polylines = polylines ?? const {},
      markers = markers ?? const {};

  MapState copyWith({
    bool? isFollowingUser,
    bool? isMapInitializated,
    bool? showMyRoute,
    Map<String, Polyline>? polylines,
    Map<String, Marker>? markers,
  }) =>
      MapState(
        isFollowingUser: isFollowingUser ?? this.isFollowingUser,
        isMapInitializated: isMapInitializated ?? this.isMapInitializated,
        showMyRoute: showMyRoute ?? this.showMyRoute,
        polylines: polylines ?? this.polylines,
         markers: markers ?? this.markers,
      );

  @override
  List<Object> get props => [isMapInitializated, isFollowingUser, showMyRoute, polylines , markers];
}
