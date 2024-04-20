part of 'add_bloc.dart';

@immutable
abstract class AddEvent {}

class AddPostEvent extends AddEvent {
  final Post post;

  AddPostEvent({required this.post});
}

