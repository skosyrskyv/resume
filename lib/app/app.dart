import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:resume/app/localizations.dart';
import 'package:resume/core/navigator/custom_navigator.dart';
import 'package:resume/core/navigator/routes.dart';
import 'package:resume/core/theme/theme_provider.dart';

final GlobalKey<NavigatorState> mainNavigator = GlobalKey<NavigatorState>();

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
            navigatorKey: mainNavigator,
            locale: context.locale,
            supportedLocales: context.supportedLocales,
            debugShowCheckedModeBanner: false,
            theme: state.theme,
            localizationsDelegates: context.localizationDelegates,
            title: 'Resume',
            initialRoute: Routes.HOME,
            onGenerateRoute: CustomNavigator.router.generator,
          );
        },
      ),
    );
  }
}
