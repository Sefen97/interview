part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class GetPostsDataEvent extends HomeEvent {}

class DeletePostEvent extends HomeEvent {}

class CreatePostEvent extends HomeEvent {}

class EditPostEvent extends HomeEvent {}
