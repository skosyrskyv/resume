import 'package:flutter/material.dart';
import 'package:resume/core/widgets/screen.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(
      body: Center(child: Text('Home')),
    );
  }
}
