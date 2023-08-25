import 'package:flutter/material.dart';
import 'package:git_explorer/app/app.dart';
import 'package:git_explorer/bootstrap.dart';
import 'package:git_explorer/injection.dart';
import 'package:git_explorer/router.dart';
import 'package:go_router/go_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  final GoRouter _router = router();

  bootstrap(() => App(routerConfig: _router));
}
