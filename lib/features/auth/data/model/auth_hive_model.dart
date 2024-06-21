
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_management_starter/app/constants/hive_table_constant.dart';
import 'package:student_management_starter/features/auth/domain/entity/auth_entity.dart';
import 'package:uuid/uuid.dart';

part 'auth_hive_model.g.dart';

final authHiveModelProvider = Provider((ref) => AuthHiveModel.empty());

@HiveType(typeId: HiveTableConstant.userTableId)
class AuthHiveModel {
  @HiveField(0)
  final String userId;

  @HiveField(1)
  final String fName;
  @HiveField(2)
  final String lName;
  @HiveField(3)
  final String email;
  @HiveField(4)
  final String password;
  @HiveField(5)
  final String confirmPassword;


  // Constructor
  AuthHiveModel({
    String? userId,
    required this.fName,
    required this.lName,
    required this.email,
    required this.password,
    required this.confirmPassword,
  }) : userId = userId ?? const Uuid().v4();

  // Empty constructor
  AuthHiveModel.empty()
      : this(
          userId: '',
          fName: '',
          lName: '',
          email: '',
          password: '',
          confirmPassword: '',
        );

  // Convert Entity to Hive Object
  static AuthHiveModel fromEntity(AuthEntity entity) => AuthHiveModel(
        userId: const Uuid().v4(),
        fName: entity.fName,
        lName: entity.lName,
        email: entity.email,
        password: entity.password,
        confirmPassword: entity.confirmPassword,
      );

  // Convert Hive Object to Entity
  AuthEntity toEntity() => AuthEntity(
        id: userId,
        fName: fName,
        lName: lName,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
      );

  @override
  String toString() {
    return 'userId: $userId, email: $email, password: $password, confirmPassword: $confirmPassword';
  }
}
