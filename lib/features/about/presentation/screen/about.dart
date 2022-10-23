import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:resume/core/widgets/screen.dart';
import 'package:resume/core/animations/fade_in_animation.dart';
import 'package:resume/features/about/presentation/widgets/hard_skills.dart';
import 'package:resume/features/about/presentation/widgets/soft_skills.dart';
import 'package:resume/features/about/presentation/widgets/titled_surface.dart';
import 'package:resume/utils/responsive.dart';
import 'package:resume/utils/spacers.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: const _Mobile(),
      desktop: _Mobile(),
    );
  }
}

class _Mobile extends StatelessWidget {
  const _Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final windowPadding = MediaQuery.of(context).padding;
    return Screen(
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            vertical: windowPadding.top + 32,
          ),
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 1000),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInAnimation(
                    child: TitledSurface(
                      title: 'about_me_title'.tr(),
                      child: Text(
                        'about_me_text'.tr(),
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  VerticalSpacer.h16(),
                  Responsive(
                    // showTabletAsMobile: true,
                    mobile: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const FadeInAnimation(
                          delay: Duration(milliseconds: 300),
                          child: HardSkills(),
                        ),
                        VerticalSpacer.h16(),
                        const FadeInAnimation(
                          delay: Duration(milliseconds: 600),
                          child: SoftSkills(),
                        ),
                      ],
                    ),
                    desktop: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: FadeInAnimation(
                            delay: Duration(milliseconds: 300),
                            child: HardSkills(),
                          ),
                        ),
                        HorizontalSpacer.w16(),
                        const Expanded(
                          child: FadeInAnimation(
                            delay: Duration(milliseconds: 600),
                            child: SoftSkills(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
