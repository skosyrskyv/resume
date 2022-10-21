import 'package:flutter/material.dart';
import 'package:resume/features/home/presentaion/screens/home_desktop.dart';
import 'package:resume/features/home/presentaion/screens/home_mobile.dart';
import 'package:resume/utils/responsive.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: HomeDesktop(),
      desktop: HomeDesktop(),
    );
  }
}
