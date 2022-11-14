import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/core/navigator/cubit/bottom_navigator_cubit.dart';
import 'package:resume/core/navigator/widgets/navigator.dart';
import 'package:resume/core/navigator/models/routes.dart';
import 'package:resume/core/widgets/app_bar/custom_app_bar.dart';
import 'package:resume/core/widgets/app_scaffold.dart';
import 'package:resume/core/widgets/bottom_navbar/custom_bottom_navigator.dart';
import 'package:resume/core/widgets/menu/menu_wrapper.dart';
import 'package:resume/utils/responsive.dart';

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
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return MenuWrapper(
      items: items,
      child: const AppScaffold(
        appBar: CustomAppBar(),
        body: NavigatorWidget(),
      ),
    );
  }
}
