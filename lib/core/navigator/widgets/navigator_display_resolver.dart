import 'package:flutter/material.dart';
import 'package:resume/core/navigator/widgets/navigator.dart';
import 'package:resume/core/widgets/app_bar/custom_app_bar.dart';
import 'package:resume/core/widgets/app_scaffold.dart';
import 'package:resume/core/widgets/bottom_navbar/custom_bottom_navigator.dart';
import 'package:resume/core/widgets/menu/menu_wrapper.dart';
import 'package:resume/utils/responsive.dart';

class NavigatorDisplayResolver extends StatelessWidget {
  const NavigatorDisplayResolver({super.key});

  final List<BottomNavigationBarItem> _items = const [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: 'home_action',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.workspace_premium,
      ),
      label: 'projects_action',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.person,
      ),
      label: 'about_action',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.mail,
      ),
      label: 'contacts_action',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: _Mobile(items: _items),
      desktop: _Desktop(items: _items),
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
      body: const AppNavigator(),
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
        body: AppNavigator(),
      ),
    );
  }
}
