// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as int,
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      private: json['private'] as bool,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      size: json['size'] as int,
      watchersCount: json['watchers_count'] as int,
      language: json['language'] as String?,
      hasIssues: json['has_issues'] as bool,
      openIssuesCount: json['open_issues_count'] as int,
      openIssues: json['open_issues'] as int,
      watchers: json['watchers'] as int,
      score: (json['score'] as num).toDouble(),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'private': instance.private,
      'owner': instance.owner,
      'description': instance.description,
      'created_at': instance.createdAt.toIso8601String(),
      'size': instance.size,
      'watchers_count': instance.watchersCount,
      'language': instance.language,
      'has_issues': instance.hasIssues,
      'open_issues_count': instance.openIssuesCount,
      'open_issues': instance.openIssues,
      'watchers': instance.watchers,
      'score': instance.score,
    };
