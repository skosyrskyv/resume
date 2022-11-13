import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:resume/core/widgets/blurred_surface.dart';
import 'package:resume/core/widgets/menu/cubit/menu_cubit.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({super.key});

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTap() {
    final menu = context.read<MenuCubit>();
    menu.state.map(
      shown: (_) => menu.hide(),
      hidden: (_) => menu.show(),
    );
  }

  void _menuListener(BuildContext context, MenuState state) {
    state.map(
      shown: (_) => _controller.forward(),
      hidden: (_) => _controller.reverse(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<MenuCubit, MenuState>(
      listener: _menuListener,
      child: InkWell(
        onTap: _onTap,
        child: BlurredSurface(
          borderRadius: BorderRadius.circular(50),
          height: 45,
          width: 45,
          margin: const EdgeInsets.only(top: 4, right: 4),
          background: theme.colorScheme.surface.withOpacity(0.1),
          child: Center(
            child: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              size: 30,
              progress: _controller,
            ),
          ),
        ),
      ),
    );
  }
}
