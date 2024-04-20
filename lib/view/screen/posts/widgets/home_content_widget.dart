import 'package:flutter/material.dart';
import 'package:interview/model/post_model.dart';
import 'package:interview/view/screen/posts/widgets/post_card_widget.dart';

class HomeContentWidget extends StatelessWidget {
  final List<Post> posts;

  const HomeContentWidget({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        return PostCardWidget(post: posts[index]);
      },
    );
  }
}
