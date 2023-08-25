import 'package:git_explorer/data/models/item.dart';
import 'package:git_explorer/data/models/owner.dart';

final fakeOwner = Owner(login: 'login', avatarUrl: 'url', id: 1);

Item getMockItem() => Item(
      id: 0,
      name: 'Default Name',
      fullName: 'Default Owner/Default Name',
      private: false,
      owner: fakeOwner,
      description: 'Default description',
      createdAt: DateTime(2000, 1, 1),
      size: 0,
      watchersCount: 0,
      language: 'None',
      hasIssues: false,
      openIssuesCount: 0,
      openIssues: 1,
      watchers: 1,
      score: 0.0,
    );
