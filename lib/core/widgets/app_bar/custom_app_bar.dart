import 'package:flutter/material.dart';
import 'package:resume/core/theme/change_theme_button.dart';
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ChangeLanguageButton(),
          ChangeThemeButton(),
        ],
      ),
    );
  }
}
