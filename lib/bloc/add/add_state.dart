part of 'add_bloc.dart';

@immutable
abstract class AddState {}

class AddInitialState extends AddState {}

class AddPostSuccessState extends AddState {}

class AddPostErrorState extends AddState {}
