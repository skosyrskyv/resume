import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:resume/features/about/presentation/widgets/titled_surface.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TitledSurface(
      title: 'about_me_title'.tr(),
      child: Text(
        'about_me_text'.tr(),
        style: theme.textTheme.bodyLarge,
      ),
    );
  }
}
