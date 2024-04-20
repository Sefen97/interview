import 'dart:async';

import 'package:flutter/material.dart';
import 'package:interview/model/post_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_event.dart';

part 'add_state.dart';

class AddBloc extends Bloc<AddEvent, AddState> {
  AddBloc() : super(AddInitialState()) {
    on<AddPostEvent>(_onAddPostEvent);
  }

  FutureOr<void> _onAddPostEvent(AddPostEvent event, Emitter<AddState> emit) {}
}
