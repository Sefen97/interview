part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitialState extends HomeState {}

class PostsLoadingState extends HomeState {}

class GetPostsSuccessState extends HomeState {}

class GetPostsErrorState extends HomeState {}

class CreatePostSuccessState extends HomeState {}

class CreatePostErrorState extends HomeState {}

class DeletePostSuccessState extends HomeState {}

class DeletePostErrorState extends HomeState {}

class EditPostSuccessState extends HomeState {}

class EditPostErrorState extends HomeState {}
