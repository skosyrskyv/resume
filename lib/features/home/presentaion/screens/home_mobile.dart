import 'package:flutter/material.dart';
import 'package:resume/core/widgets/screen.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(
      body: Center(child: Text('Home')),
    );
  }
}
