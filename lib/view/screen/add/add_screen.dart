import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview/bloc/add/add_bloc.dart';
import 'package:interview/view/screen/add/widgets/add_content_widget.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  AddBloc get _bloc => BlocProvider.of<AddBloc>(context);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddBloc, AddState>(
        listener: (state, context) {},
        builder: (state, context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Add Post"),
            ),
            body: AddContentWidget(
              emailController: _emailController,
              descriptionController: _descriptionController,
              imageController: _imageController,
              titleController: _titleController,
            ),
          );
        });
  }
}
