import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:interview/model/post_model.dart';

class PostCardWidget extends StatelessWidget {
  final Post post;

  const PostCardWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(width: 2,color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title : ${post.title}"),
            Text("Description : ${post.description}"),
            Text("Email : ${post.email}"),
            Text("Image : ${post.image}"),
          ],
        ),
      ),
    );
  }
}
