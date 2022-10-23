import 'package:flutter/material.dart';
import 'package:resume/core/theme/change_theme_button.dart';
import 'package:resume/core/widgets/blurred_surface.dart';
import 'package:resume/core/widgets/change_language_button.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size(double.maxFinite, 50);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Center(
        child: BlurredSurface(
          margin: const EdgeInsets.only(top: 4),
          borderRadius: BorderRadius.circular(50),
          background: Theme.of(context).colorScheme.background.withOpacity(0.1),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const [
                ChangeLanguageButton(),
                ChangeThemeButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
