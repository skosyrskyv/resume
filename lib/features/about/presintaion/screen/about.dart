import 'package:flutter/material.dart';
import 'package:resume/core/widgets/screen.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(
      body: Center(child: Text('About')),
    );
  }
}
