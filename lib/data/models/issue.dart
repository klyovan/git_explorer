import 'package:json_annotation/json_annotation.dart';

part 'issue.g.dart';


@JsonSerializable(fieldRename: FieldRename.snake)
class Issue {
  Issue({
    required this.title,
    required this.date,
    required this.state,
  });

  final String title;
  @JsonKey(name: 'created_at')
  final DateTime date;
  final String state;

  static Issue fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);

  Map<String, dynamic> toJson() => _$IssueToJson(this);
}
