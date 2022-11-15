import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/app/runner.dart';
import 'package:resume/core/navigator/cubit/bottom_navigator_cubit.dart';
import 'package:resume/core/widgets/menu/cubit/menu_cubit.dart';
import 'package:resume/extensions/string_extension.dart';

class MenuWrapper extends StatelessWidget {
  final Widget child;
  final double width;
  final List<BottomNavigationBarItem> items;

  const MenuWrapper({
    super.key,
    required this.child,
    required this.items,
    this.width = 200,
  });

  final double offset = 50;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => getIt.get<MenuCubit>(),
      child: BlocBuilder<MenuCubit, MenuState>(
        builder: (context, state) {
          return Stack(
            children: [
              Positioned(
                top: 0,
                width: width + offset,
                bottom: 0,
                right: 0,
                child: Material(
                  color: Theme.of(context).colorScheme.surface,
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 50, left: offset),
                    itemCount: items.length,
                    itemBuilder: (context, index) => ListTile(
                      onTap: () {
                        context.read<NavigatorCubit>().setTab(index);
                        context.read<MenuCubit>().hide();
                      },
                      iconColor: theme.brightness == Brightness.light
                          ? theme.colorScheme.tertiary
                          : theme.colorScheme.onSurface,
                      leading: items[index].icon,
                      title: Text(
                        items[index].label!.tr().capitalize(),
                        style: theme.textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                top: 0,
                bottom: 0,
                left: state.map(shown: (_) => -width, hidden: (_) => 0),
                right: state.map(shown: (_) => width, hidden: (_) => 0),
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutCubic,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      state.map(shown: (_) => 26, hidden: (_) => 0)),
                  child: child,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
