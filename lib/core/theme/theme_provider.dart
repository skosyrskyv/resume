import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/core/theme/bloc/theme_bloc.dart';

typedef Builder = Widget Function(BuildContext, ThemeState);

class ThemeProvider extends StatelessWidget {
  final Builder builder;
  const ThemeProvider({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => GetIt.I.get(),
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: builder),
    );
  }
}
