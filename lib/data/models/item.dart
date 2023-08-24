import 'package:git_explorer/data/models/owner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Item {
  Item({
    required this.id,
    required this.name,
    required this.fullName,
    required this.private,
    required this.owner,
    required this.description,
    required this.createdAt,
    required this.size,
    required this.watchersCount,
    required this.language,
    required this.hasIssues,
    required this.openIssuesCount,
    required this.openIssues,
    required this.watchers,
    required this.score,
  });

  final int id;
  final String name;
  final String fullName;
  final bool private;
  final Owner owner;
  final String? description;
  final DateTime createdAt;
  final int size;
  final int watchersCount;
  final String? language;
  final bool hasIssues;
  final int openIssuesCount;
  final int openIssues;
  final int watchers;
  final double score;

  static Item fromJson(Map<String, dynamic> json) =>
      _$ItemFromJson(json);


  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
