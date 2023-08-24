import 'package:equatable/equatable.dart';

sealed class SearchItemEvent extends Equatable {
  const SearchItemEvent();

  @override
  List<Object> get props => [];
}

final class SearchItem extends SearchItemEvent {
  const SearchItem(this.text);

  final String text;

  @override
  List<Object> get props => [text];
}
