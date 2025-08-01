import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String email;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  final String? phone;
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'last_login')
  final DateTime? lastLogin;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'is_super_admin')
  final bool? isSuperAdmin;
  final List<String>? favorites;

  const User({
    required this.id,
    required this.email,
    this.firstName,
    this.lastName,
    this.phone,
    this.avatarUrl,
    this.createdAt,
    this.lastLogin,
    this.updatedAt,
    this.isSuperAdmin,
    this.favorites,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? avatarUrl,
    DateTime? createdAt,
    DateTime? lastLogin,
    DateTime? updatedAt,
    bool? isSuperAdmin,
    List<String>? favorites,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      createdAt: createdAt ?? this.createdAt,
      lastLogin: lastLogin ?? this.lastLogin,
      updatedAt: updatedAt ?? this.updatedAt,
      isSuperAdmin: isSuperAdmin ?? this.isSuperAdmin,
      favorites: favorites ?? this.favorites,
    );
  }

  String get fullName {
    if (firstName != null && lastName != null) {
      return '$firstName $lastName';
    } else if (firstName != null) {
      return firstName!;
    } else if (lastName != null) {
      return lastName!;
    }
    return email.split('@').first;
  }
}
