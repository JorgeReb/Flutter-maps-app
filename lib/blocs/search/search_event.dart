part of 'search_bloc.dart';

class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class OnActivateManuelMarkerEvent extends SearchEvent{}
class OnDesactivateManuelMarkerEvent extends SearchEvent{}

class OnNewPlacesFoundEvent extends SearchEvent{
  final List<Feature> places;
  const OnNewPlacesFoundEvent(this.places);
}

class AddToHistoryEvent extends SearchEvent {
  final Feature place;
  const AddToHistoryEvent(this.place);
}
