import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitialState()) {
    on<GetPostsDataEvent>(_onGetPostsDataEvent);
    on<DeletePostEvent>(_onDeletePostEvent);
    on<CreatePostEvent>(_onCreatePostEvent);
    on<EditPostEvent>(_onEditPostEvent);
  }

  FutureOr<void> _onGetPostsDataEvent(GetPostsDataEvent event,
      Emitter<HomeState> emit) async {
    Dio dio = Dio();
    final response = await dio.get(
        "http://emergingideas.ae/test_apis/read.php?email=?mike.hsch@gmail.com");
    if (response.statusCode == 200) {
      emit(GetPostsSuccessState());
      print(response.data);
      print("TTTTTTTTTTTT");
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  }

  FutureOr<void> _onDeletePostEvent(DeletePostEvent event,
      Emitter<HomeState> emit) {}

  FutureOr<void> _onCreatePostEvent(CreatePostEvent event,
      Emitter<HomeState> emit) {}

  FutureOr<void> _onEditPostEvent(EditPostEvent event,
      Emitter<HomeState> emit) {}
}
