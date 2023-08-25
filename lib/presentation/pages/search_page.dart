import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_explorer/data/models/item.dart';
import 'package:git_explorer/l10n/l10n.dart';
import 'package:git_explorer/presentation/blocs/search_item_bloc/search_item_bloc.dart';
import 'package:git_explorer/presentation/blocs/search_item_bloc/search_item_event.dart';
import 'package:git_explorer/presentation/blocs/search_item_bloc/search_item_state.dart';
import 'package:git_explorer/presentation/widgets/repo_card.dart';

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
      itemBuilder: (context, index) => RepoCard(
        items: items,
        avatarUrl: items[index].owner.avatarUrl,
        login: items[index].owner.login,
        openIssues: items[index].openIssues,
        name: items[index].name,
      ),
      itemCount: items.length,
    );
  }
}
