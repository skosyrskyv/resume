import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/core/navigator/cubit/bottom_navigator_cubit.dart';
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
    return (screenWidth - _itemWidth * 2) /
            100 *
            (100 / (_itemsCount - 1)) *
            (index) +
        _itemWidth / 2;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return BlocBuilder<BottomNavigatorCubit, int>(
      builder: (context, screenIndex) {
        return Container(
          color: Colors.transparent,
          constraints: const BoxConstraints(maxHeight: 110),
          child: SafeArea(
            top: false,
            left: false,
            right: false,
            child: Stack(
              children: [
                AnimatedPositioned(
                  left: _calculateShift(screenIndex, screenWidth),
                  bottom: 8,
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
                    bottom: 8,
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