import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_with_bloc/bloc/post_bloc.dart';
import 'package:list_with_bloc/view/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<PostBloc>(
        builder: (context) => PostBloc()..add(PostEvent()),
        child: MainPage(),
      ),
    );
  }
}
