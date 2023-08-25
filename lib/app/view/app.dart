import 'package:flutter/material.dart';
import 'package:git_explorer/l10n/l10n.dart';

class App extends StatelessWidget {
  final RouterConfig<Object>? routerConfig;

  const App({super.key, this.routerConfig});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: routerConfig,
    );
  }
}
