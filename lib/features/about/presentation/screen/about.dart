import 'package:flutter/material.dart';
import 'package:resume/core/widgets/centered_content_scroll_view.dart';
import 'package:resume/core/widgets/screen.dart';
import 'package:resume/core/animations/fade_in_animation.dart';
import 'package:resume/features/about/presentation/widgets/about_me.dart';
import 'package:resume/features/about/presentation/widgets/hard_skills.dart';
import 'package:resume/features/about/presentation/widgets/soft_skills.dart';
import 'package:resume/utils/responsive.dart';
import 'package:resume/utils/spacers.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const Screen(
      body: CenteredContentScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          VerticalSpacer(64),
          FadeInAnimation(
            child: AboutMe(),
          ),
          VerticalSpacer(16),
          Responsive(
            mobile: _Mobile(),
            desktop: _Desktop(),
          ),
          VerticalSpacer(100),
        ],
      ),
    );
  }
}

class _Mobile extends StatelessWidget {
  const _Mobile();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        FadeInAnimation(
          delay: Duration(milliseconds: 300),
          child: HardSkills(),
        ),
        VerticalSpacer(16),
        FadeInAnimation(
          delay: Duration(milliseconds: 600),
          child: SoftSkills(),
        ),
      ],
    );
  }
}

class _Desktop extends StatelessWidget {
  const _Desktop();
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Expanded(
          child: FadeInAnimation(
            delay: Duration(milliseconds: 300),
            child: HardSkills(),
          ),
        ),
        HorizontalSpacer(16),
        Expanded(
          child: FadeInAnimation(
            delay: Duration(milliseconds: 600),
            child: SoftSkills(),
          ),
        ),
      ],
    );
  }
}
