part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeProductCartButtonClickedEvent extends HomeEvent {
  final ProductDataModel clickedProduct;

  HomeProductCartButtonClickedEvent({required this.clickedProduct});
}

class HomeProductWishListButtonClickedEvent extends HomeEvent {
  final ProductDataModel clickedProduct;

  HomeProductWishListButtonClickedEvent({required this.clickedProduct});
}

class HomeWishListButtonNavigateEvent extends HomeEvent {}

class HomeProductCartButtonNavigateEvent extends HomeEvent {}
