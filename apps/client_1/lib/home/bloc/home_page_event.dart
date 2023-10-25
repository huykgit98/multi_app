part of 'home_page_bloc.dart';

sealed class HomePageEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class PostFetched extends HomePageEvent {}
