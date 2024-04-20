import 'package:flutter/material.dart';

class AddContentWidget extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController imageController;

  const AddContentWidget({
    super.key,
    required this.emailController,
    required this.descriptionController,
    required this.imageController,
    required this.titleController,
  });

  @override
  State<AddContentWidget> createState() => _AddContentWidgetState();
}

class _AddContentWidgetState extends State<AddContentWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextFormField(
            controller: widget.emailController,
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
          ),
          TextFormField(
            controller: widget.titleController,
            decoration: const InputDecoration(
              hintText: 'Title',
            ),
          ),
          TextFormField(
            controller: widget.descriptionController,
            decoration: const InputDecoration(
              hintText: 'Description',
            ),
          ),
          TextFormField(
            controller: widget.imageController,
            decoration: const InputDecoration(
              hintText: 'ImageLink',
            ),
          ),
         const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  height: 60,
                  color: Colors.blue,
                  onPressed: () {},
                  child: const Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
