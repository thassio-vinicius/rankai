import 'package:flutter/material.dart';
import "package:rankai/core/injector.dart" as di;
import 'package:rankai/core/injector.dart';
import 'package:rankai/core/routes/routes.dart';
import 'package:rankai/l10n/global_app_localizations.dart';

void main() async {
  await di.init();

  runApp(const RankAI());
}

class RankAI extends StatelessWidget {
  const RankAI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      builder: (context, child) {
        sl<GlobalAppLocalizations>().setAppLocalizations(
          AppLocalizations.of(context),
        );
        return child ?? Container();
      },
    );
  }
}
