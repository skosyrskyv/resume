import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:resume/app/localizations.dart';
import 'package:resume/core/navigator/widgets/navigator_wrapper.dart';
import 'package:resume/core/theme/theme_provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      path: AppLocalizations.path,
      supportedLocales: AppLocalizations.supportedLocales,
      startLocale: AppLocalizations.russian,
      fallbackLocale: AppLocalizations.english,
      assetLoader: CsvAssetLoader(),
      child: ThemeProvider(
        builder: (context, state) {
          return MaterialApp(
            locale: context.locale,
            supportedLocales: context.supportedLocales,
            debugShowCheckedModeBanner: false,
            theme: state.theme,
            localizationsDelegates: context.localizationDelegates,
            title: 'Resume',
            home: const ScreenNavigator(),
          );
        },
      ),
    );
  }
}
