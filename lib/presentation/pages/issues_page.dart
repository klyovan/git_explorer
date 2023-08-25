import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_explorer/presentation/blocs/issue_bloc/issues_bloc.dart';
import 'package:git_explorer/presentation/blocs/issue_bloc/issues_state.dart';
import 'package:intl/intl.dart';

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
              orElse: () => const SizedBox(),
              loading: () =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              success: (issues) => ListView.separated(
                    itemBuilder: (context, index) => Column(
                      children: [
                        Text(issues[index].title),
                        Text(
                          DateFormat.yMMMd().format(issues[index].date),
                        ),
                      ],
                    ),
                    itemCount: issues.length,
                    separatorBuilder: (_, __) => const Divider(),
                  ));
        },
      ),
    );
  }
}
