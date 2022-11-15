import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/app/runner.dart';
import 'package:resume/core/navigator/cubit/navigator_cubit.dart';
import 'package:resume/core/theme/bloc/theme_bloc.dart';

class AppBlocsProvider extends StatelessWidget {
  final Widget child;
  const AppBlocsProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt.get<NavigatorCubit>(),
        ),
        BlocProvider(
          create: (_) => getIt.get<ThemeBloc>(),
        ),
      ],
      child: child,
    );
  }
}
