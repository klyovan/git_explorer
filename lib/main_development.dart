import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_explorer/app/app.dart';
import 'package:git_explorer/bootstrap.dart';
import 'package:git_explorer/injection.dart';
import 'package:git_explorer/presentation/blocs/issue_bloc/issues_bloc.dart';
import 'package:git_explorer/presentation/blocs/issue_bloc/issues_event.dart';
import 'package:git_explorer/presentation/blocs/search_item_bloc/search_item_bloc.dart';
import 'package:git_explorer/presentation/pages/issues_page.dart';
import 'package:git_explorer/presentation/pages/search_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider<SearchItemBloc>(
              create: (context) => getIt(), child: const SearchPage());
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'issues/:owner/:repoName',
            builder: (BuildContext context, GoRouterState state) {
              final owner = state.pathParameters['owner'] ?? '';
              final repoName = state.pathParameters['repoName'] ?? '';
              return BlocProvider<IssuesBloc>(
                create: (context) => getIt()..add(GetIssue(owner, repoName.toLowerCase())),
                child: IssuesPage(
                    owner: state.pathParameters['owner'] ?? '',
                    repoName: state.pathParameters['repoName'] ?? ''),
              );
            },
          ),
        ],
      ),
    ],
  );

  bootstrap(() => App(routerConfig: _router));
}
