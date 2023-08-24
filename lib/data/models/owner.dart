import 'package:json_annotation/json_annotation.dart';

part 'owner.g.dart';


@JsonSerializable(fieldRename: FieldRename.snake)
class Owner {
  Owner({
    required this.login,
    required this.id,
    required this.avatarUrl,
  });

  final String login;
  final int id;
  final String avatarUrl;

  static Owner fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}
