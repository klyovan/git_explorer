import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_explorer/presentation/blocs/issue_bloc/issues_bloc.dart';
import 'package:git_explorer/presentation/blocs/issue_bloc/issues_state.dart';

class IssuesPage extends StatelessWidget {
  final String repoName;
  final String owner;

  const IssuesPage({super.key, required this.repoName, required this.owner});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$repoName Issues')),
      body: BlocBuilder<IssuesBloc, IssuesState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => SizedBox(),
              loading: () => const CircularProgressIndicator.adaptive(),
              success: (issues) => ListView.separated(
                    itemBuilder: (context, index) => Text(issues[index].title),
                    itemCount: issues.length,
                    separatorBuilder: (_, __) => const Divider(),
                  ));
        },
      ),
    );
  }
}
