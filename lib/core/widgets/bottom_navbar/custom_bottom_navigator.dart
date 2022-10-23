import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/core/navigator/cubit/bottom_navigator_cubit.dart';
import 'package:resume/core/widgets/blurred_surface.dart';
import 'package:resume/core/widgets/bottom_navbar/bottom_navbar_button.dart';
import 'package:resume/extensions/iterable_extension.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  const CustomBottomNavigationBar({super.key, required this.items});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late int _itemsCount;
  late double _itemWidth;
  late Duration _animationDuration;

  @override
  void initState() {
    _itemsCount = widget.items.length;
    _itemWidth = 60;
    _animationDuration = const Duration(milliseconds: 200);
    super.initState();
  }

  double _calculateShift(int index, double screenWidth) {
    final leftPadding = screenWidth < 300.0 ? 1.5 : 2;
    final rightPadding = screenWidth < 300.0 ? 4 : 2;

    return (screenWidth - _itemWidth * leftPadding) /
            100 *
            100 /
            (_itemsCount - 1) *
            index +
        _itemWidth / rightPadding;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);

    return BlocBuilder<BottomNavigatorCubit, int>(
      builder: (context, screenIndex) {
        return Container(
          constraints: const BoxConstraints(maxHeight: 110),
          child: SafeArea(
            top: false,
            left: false,
            right: false,
            child: Stack(
              children: [
                Positioned(
                  left: 8,
                  right: 8,
                  bottom: 4,
                  child: BlurredSurface(
                    height: 76,
                    borderRadius: BorderRadius.circular(50),
                    background: theme.colorScheme.background.withOpacity(0.1),
                  ),
                ),
                AnimatedPositioned(
                  left: _calculateShift(screenIndex, screenWidth),
                  bottom: 12,
                  curve: Curves.easeInExpo,
                  duration: _animationDuration,
                  child: Container(
                    height: _itemWidth,
                    width: _itemWidth,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          theme.colorScheme.primary,
                          theme.colorScheme.secondary,
                        ],
                      ),
                    ),
                  ),
                ),
                ...widget.items.mapWithIndex(
                  (item, index) => Positioned(
                    left: _calculateShift(index, screenWidth),
                    bottom: 12,
                    child: BottomNavbarButton(
                      icon: item.icon,
                      size: 60,
                      selected: screenIndex == index,
                      iconColorGradient: [
                        theme.colorScheme.primary,
                        theme.colorScheme.secondary,
                      ],
                      selectedIconColorGradient: [
                        theme.colorScheme.onPrimary,
                        theme.colorScheme.onPrimary,
                      ],
                      colorChangingDuration: _animationDuration,
                      onTap: () =>
                          context.read<BottomNavigatorCubit>().setTab(index),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
