import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview/bloc/home/home_bloc.dart';
import 'package:interview/model/post_model.dart';
import 'package:interview/view/screen/add/add_screen.dart';
import 'package:interview/view/screen/posts/widgets/home_content_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeBloc get _bloc => BlocProvider.of<HomeBloc>(context);
  final List<Post> _posts = [
    Post(
        title: "Title",
        email: "Email",
        description: "description",
        image: "image link"),
    Post(
        title: "Title",
        email: "Email",
        description: "description",
        image: "image link"),
    Post(
        title: "Title",
        email: "Email",
        description: "description",
        image: "image link")
  ];

  @override
  void initState() {
    _bloc.add(GetPostsDataEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Posts")),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (state, context) {
          if (state is GetPostsSuccessState) {
          } else if (state is GetPostsErrorState) {
          } else if (state is CreatePostSuccessState) {
          } else if (state is CreatePostErrorState) {
          } else if (state is DeletePostSuccessState) {
          } else if (state is DeletePostErrorState) {
          } else if (state is EditPostSuccessState) {
          } else if (state is EditPostErrorState) {}
        },
        builder: (state, context) {
          if (state is PostsLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          return HomeContentWidget(
            posts: _posts,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const AddScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
