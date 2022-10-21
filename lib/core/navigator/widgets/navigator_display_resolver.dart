import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/core/navigator/cubit/bottom_navigator_cubit.dart';
import 'package:resume/core/navigator/widgets/navigator.dart';
import 'package:resume/core/navigator/models/routes.dart';
import 'package:resume/core/widgets/app_bar/custom_app_bar.dart';
import 'package:resume/core/widgets/app_scaffold.dart';
import 'package:resume/core/widgets/bottom_navbar/custom_bottom_navigator.dart';
import 'package:resume/core/widgets/buttons/gradient_text_button.dart';
import 'package:resume/utils/responsive.dart';
import 'package:resume/extensions/string_extension.dart';

class NavigatorDisplayResolver extends StatefulWidget {
  const NavigatorDisplayResolver({super.key});

  @override
  State<NavigatorDisplayResolver> createState() =>
      _NavigatorDisplayResolverState();
}

class _NavigatorDisplayResolverState extends State<NavigatorDisplayResolver> {
  final List<BottomNavigationBarItem> _items = const [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: 'home_action'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.workspace_premium,
        ),
        label: 'projects_action'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
        ),
        label: 'about_action'),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.mail,
      ),
      label: 'contacts_action',
    )
  ];

  void _navigate(int index) {
    switch (index) {
      case 0:
        Navigator.of(kNavigatorKey.currentContext!).pushNamedAndRemoveUntil(
          Routes.HOME,
          (route) => route.isFirst,
        );
        break;
      case 1:
        Navigator.of(kNavigatorKey.currentContext!).pushNamedAndRemoveUntil(
          Routes.PROJECTS,
          (route) => route.isFirst,
        );
        break;
      case 2:
        Navigator.of(kNavigatorKey.currentContext!).pushNamedAndRemoveUntil(
          Routes.ABOUT,
          (route) => route.isFirst,
        );
        break;
      case 3:
        Navigator.of(kNavigatorKey.currentContext!).pushNamedAndRemoveUntil(
          Routes.CONTACTS,
          (route) => route.isFirst,
        );
        break;
      default:
        Navigator.of(kNavigatorKey.currentContext!).pushNamedAndRemoveUntil(
          Routes.HOME,
          (route) => route.isFirst,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BottomNavigatorCubit, int>(
      listener: (context, state) => _navigate(state),
      listenWhen: (previous, current) => previous != current,
      child: Responsive(
        mobile: _Mobile(items: _items),
        desktop: _Desktop(items: _items),
      ),
    );
  }
}

// MOBILE
class _Mobile extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  const _Mobile({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(items: items),
      body: const NavigatorWidget(),
    );
  }
}

// DESKTOP
class _Desktop extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  const _Desktop({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = <Color>[
      theme.colorScheme.primary,
      theme.colorScheme.secondary,
    ];

    const textStyle = TextStyle(
      fontSize: 20,
      fontFamily: 'Invetero',
    );

    const padding = EdgeInsets.all(32);

    return AppScaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [
            const Positioned.fill(child: NavigatorWidget()),
            Positioned(
              top: 0,
              left: 0,
              child: GradientTextButton(
                text: items[0].label!.tr(),
                onTap: () => context.read<BottomNavigatorCubit>().setTab(0),
                padding: padding,
                textStyle: textStyle,
                colors: colors,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: GradientTextButton(
                text: items[1].label!.tr().capitalize(),
                onTap: () => context.read<BottomNavigatorCubit>().setTab(1),
                padding: padding,
                textStyle: textStyle,
                colors: colors,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: GradientTextButton(
                text: items[2].label!.tr().capitalize(),
                onTap: () => context.read<BottomNavigatorCubit>().setTab(2),
                padding: padding,
                textStyle: textStyle,
                colors: colors,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: GradientTextButton(
                text: items[3].label!.tr().capitalize(),
                onTap: () => context.read<BottomNavigatorCubit>().setTab(3),
                padding: padding,
                textStyle: textStyle,
                colors: colors,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
