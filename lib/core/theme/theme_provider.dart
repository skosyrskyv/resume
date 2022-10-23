import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/app/runner.dart';
import 'package:resume/core/theme/bloc/theme_bloc.dart';

typedef Builder = Widget Function(BuildContext, ThemeState);

class ThemeProvider extends StatelessWidget {
  final Builder builder;
  const ThemeProvider({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => getIt.get(),
      child: BlocConsumer<ThemeBloc, ThemeState>(
        listener: (context, state) {
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            systemNavigationBarColor: state.theme.colorScheme.background,
          ));
        },
        builder: builder,
      ),
    );
  }
}
