import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview/bloc/add/add_bloc.dart';
import 'package:interview/bloc/home/home_bloc.dart';
import 'package:interview/view/screen/posts/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(create: (context) => HomeBloc()),
        BlocProvider<AddBloc>(create: (context) => AddBloc())
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
