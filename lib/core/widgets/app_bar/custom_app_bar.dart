import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume/core/theme/change_theme_button.dart';
import 'package:resume/core/widgets/blurred_surface.dart';
import 'package:resume/core/widgets/change_language_button.dart';
import 'package:resume/core/widgets/menu/menu_buttom.dart';
import 'package:resume/utils/responsive.dart';

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
    final theme = Theme.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        statusBarBrightness: theme.brightness,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: theme.brightness,
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: theme.brightness,
        systemStatusBarContrastEnforced: true,
      ),
      child: SafeArea(
        bottom: false,
        child: Row(
          children: [
            if (!Responsive.isMobile(context)) const SizedBox(width: 50),
            const Spacer(),
            BlurredSurface(
              margin: const EdgeInsets.only(top: 4),
              borderRadius: BorderRadius.circular(50),
              background:
                  Theme.of(context).colorScheme.background.withOpacity(0.1),
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
            const Spacer(),
            if (!Responsive.isMobile(context)) const MenuButton(),
          ],
        ),
      ),
    );
  }
}
