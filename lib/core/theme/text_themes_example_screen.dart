import 'package:flutter/material.dart';

/// Screen displays all text themes
class TextThemeExampleScreen extends StatelessWidget {
  const TextThemeExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ListView(
            children: [
              Text(
                'displayLarge',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                'displayMedium',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                'displaySmall',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                'headlineLarge',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'headlineMedium',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                'headlineSmall',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'titleLarge',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'titleMedium',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'titleSmall',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                'labelLarge',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                'labelMedium',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                'labelSmall',
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                'bodyLarge',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'bodyMedium',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                'bodySmall',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
