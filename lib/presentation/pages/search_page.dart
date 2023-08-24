import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_explorer/data/models/item.dart';
import 'package:git_explorer/l10n/l10n.dart';
import 'package:git_explorer/presentation/blocs/search_item_bloc/search_item_bloc.dart';
import 'package:git_explorer/presentation/blocs/search_item_bloc/search_item_event.dart';
import 'package:git_explorer/presentation/blocs/search_item_bloc/search_item_state.dart';
import 'package:go_router/go_router.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(title: Text(l10n.counterAppBarTitle)),
            const SliverToBoxAdapter(
                child: SizedBox(height: 50, child: _SearchField())),
            const SliverPadding(padding: EdgeInsets.only(top: 50)),
            BlocBuilder<SearchItemBloc, SearchItemState>(
              builder: (context, state) {
                return state.maybeWhen(
                    success: (items) => _OnSuccessSearchItem(items: items),
                    loading: () => const SliverToBoxAdapter(
                        child: CircularProgressIndicator.adaptive()),
                    orElse: () => const SliverToBoxAdapter());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchField extends StatefulWidget {
  const _SearchField({
    super.key,
  });

  @override
  State<_SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<_SearchField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      decoration: const InputDecoration(
        hintText: 'Type to search ...',
        prefixIcon: Icon(Icons.search),
      ),
      onSubmitted: (value) =>
          context.read<SearchItemBloc>().add(SearchItem(value)),
    );
  }
}

class _OnSuccessSearchItem extends StatelessWidget {
  final List<Item> items;

  const _OnSuccessSearchItem({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (_, index) => Divider(
        height: 2,
        color: Theme.of(context).dividerColor,
      ),
      itemBuilder: (context, index) => Container(
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
                        Text(items[index].name,
                            overflow: TextOverflow.ellipsis),
                        Row(
                          children: [
                            Text('Open issues: ${items[index].openIssues}'),
                            if (items[index].openIssues > 0)
                              IconButton(
                                  onPressed: () {
                                    context.go(
                                        '/issues/${items[index].owner.login}/${items[index].name}');
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
                      Text(items[index].owner.login),
                      Image.network(
                        items[index].owner.avatarUrl,
                        height: 50,
                        width: 50,
                      ),
                    ],
                  )
                ],
              ),
            ],
          )),
      itemCount: items.length,
    );
  }
}
