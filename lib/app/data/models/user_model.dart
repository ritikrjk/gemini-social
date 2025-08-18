import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String username;
  final String displayName;
  final String email;
  final String avatarUrl;
  final String coverPhotoUrl;
  final String bio;
  final List<String> followers;
  final List<String> following;
  final DateTime createdAt;
  final bool isVerified;

  UserModel({
    required this.id,
    required this.username,
    required this.displayName,
    required this.email,
    this.avatarUrl = '',
    this.coverPhotoUrl = '',
    this.bio = '',
    this.followers = const [],
    this.following = const [],
    required this.createdAt,
    this.isVerified = false,
  });

  // Getters for computed properties
  int get followersCount => followers.length;
  int get followingCount => following.length;

  // Factory constructor to create a UserModel from a Firestore document
  factory UserModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>? ?? {};
    return UserModel(
      id: doc.id,
      username: data['username'] ?? '',
      displayName: data['displayName'] ?? '',
      email: data['email'] ?? '',
      avatarUrl: data['avatarUrl'] ?? '',
      coverPhotoUrl: data['coverPhotoUrl'] ?? '',
      bio: data['bio'] ?? '',
      followers: List<String>.from(data['followers'] ?? []),
      following: List<String>.from(data['following'] ?? []),
      createdAt: (data['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      isVerified: data['isVerified'] ?? false,
    );
  }

  // Method to convert a UserModel instance to a map for Firestore
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'displayName': displayName,
      'email': email,
      'avatarUrl': avatarUrl,
      'coverPhotoUrl': coverPhotoUrl,
      'bio': bio,
      'followers': followers,
      'following': following,
      'createdAt': Timestamp.fromDate(createdAt),
      'isVerified': isVerified,
    };
  }

  // CopyWith method for immutable updates
  UserModel copyWith({
    String? id,
    String? username,
    String? displayName,
    String? email,
    String? avatarUrl,
    String? coverPhotoUrl,
    String? bio,
    List<String>? followers,
    List<String>? following,
    DateTime? createdAt,
    bool? isVerified,
  }) {
    return UserModel(
      id: id ?? this.id,
      username: username ?? this.username,
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      coverPhotoUrl: coverPhotoUrl ?? this.coverPhotoUrl,
      bio: bio ?? this.bio,
      followers: followers ?? this.followers,
      following: following ?? this.following,
      createdAt: createdAt ?? this.createdAt,
      isVerified: isVerified ?? this.isVerified,
    );
  }
}
