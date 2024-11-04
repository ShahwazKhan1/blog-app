import 'package:blog_app/core/common/enities/user.dart';

class UsersModel extends User {
  UsersModel({
    required super.email,
    required super.id,
    required super.name,
  });

  factory UsersModel.fromJson(Map<String, dynamic> map) {
    return UsersModel(
        email: map['email'] ?? '',
        id: map['id'] ?? '',
        name: map['name'] ?? '');
  }
  UsersModel copyWith({
    String? id,
    String? email,
    String? name,
  }) {
    return UsersModel(
      email: email ?? this.email,
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
