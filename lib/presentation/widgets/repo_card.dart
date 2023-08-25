import 'package:flutter/material.dart';
import 'package:git_explorer/data/models/item.dart';
import 'package:go_router/go_router.dart';

class RepoCard extends StatelessWidget {
  const RepoCard({
    super.key,
    required this.items,
    required this.avatarUrl,
    required this.login,
    required this.name,
    required this.openIssues,
  });

  final List<Item> items;
  final String avatarUrl;
  final String login;
  final String name;
  final int openIssues;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, overflow: TextOverflow.ellipsis),
                      Row(
                        children: [
                          Text('Open issues: ${openIssues}'),
                          if (openIssues > 0)
                            IconButton(
                                onPressed: () {
                                  context.go('/issues/$login/$name');
                                },
                                icon: const Icon(Icons.remove_red_eye))
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(login),
                    Image.network(
                      avatarUrl,
                      height: 50,
                      width: 50,
                    ),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
