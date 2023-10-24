part of 'map_bloc.dart';

class MapState extends Equatable {
  final bool isFollowingUser;
  final bool isMapInitializated;
  final bool showMyRoute;

  final Map<String, Polyline> polylines;

  const MapState({
  this.isMapInitializated = false, 
  this.isFollowingUser = true, 
  this.showMyRoute = true,
  Map<String, Polyline>? polylines
  }) : polylines = polylines ?? const {};

  MapState copyWith({
    bool? isFollowingUser,
    bool? isMapInitializated,
    bool? showMyRoute,
    Map<String, Polyline>? polylines
  }) =>
      MapState(
        isFollowingUser: isFollowingUser ?? this.isFollowingUser,
        isMapInitializated: isMapInitializated ?? this.isMapInitializated,
        showMyRoute: showMyRoute ?? this.showMyRoute,
        polylines: polylines ?? this.polylines
      );

  @override
  List<Object> get props => [isMapInitializated, isFollowingUser, showMyRoute, polylines];
}
