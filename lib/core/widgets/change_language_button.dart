import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:resume/app/localizations.dart';
import 'package:resume/core/widgets/app_bar/app_bar_button.dart';

class ChangeLanguageButton extends StatefulWidget {
  const ChangeLanguageButton({super.key});

  @override
  State<ChangeLanguageButton> createState() => _ChangeLanguageButtonState();
}

class _ChangeLanguageButtonState extends State<ChangeLanguageButton> {
  late String langCode;

  @override
  void initState() {
    langCode = '';
    super.initState();
  }

  void getLocale() {
    langCode = context.locale.languageCode.toUpperCase();
    setState(() {});
  }

  void setLocale() async {
    Locale locale;
    locale = context.locale == AppLocalizations.russian
        ? AppLocalizations.english
        : AppLocalizations.russian;
    await context.setLocale(locale);
  }

  void onChange() {}
  @override
  Widget build(BuildContext context) {
    getLocale();
    return AppBarButton(
      onTap: setLocale,
      child: Text(
        langCode,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
