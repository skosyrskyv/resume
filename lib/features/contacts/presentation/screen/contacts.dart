import 'package:flutter/material.dart';
import 'package:resume/core/widgets/screen.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Screen(
      body: Center(
        child: Text('Contacts'),
      ),
    );
  }
}
