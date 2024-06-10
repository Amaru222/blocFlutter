part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeProductWishListButtonClickedEvent extends HomeEvent {

}
class HomeWishListButtonNavigateEvent extends HomeEvent {

}
class HomeCartButtonNavigateEvent extends HomeEvent {
  
}