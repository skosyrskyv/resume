import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/core/theme/bloc/theme_bloc.dart';
import 'package:resume/core/widgets/app_bar/app_bar_button.dart';

class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return AppBarButton(
          child: const Icon(Icons.mode_night),
          onTap: () => context.read<ThemeBloc>().add(
                state is DarkThemeState
                    ? const ThemeEvent.setLight()
                    : const ThemeEvent.setDark(),
              ),
        );
      },
    );
  }
}
