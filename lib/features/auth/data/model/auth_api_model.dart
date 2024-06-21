
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:student_management_starter/features/auth/domain/entity/auth_entity.dart';
 
part 'auth_api_model.g.dart';
 
final authApiModelProvider = Provider<AuthApiModel>((ref) =>  AuthApiModel.empty());
 
@JsonSerializable()
class AuthApiModel {
  @JsonKey(name: '_id')
  final String id;
  final String fName;
  final String lName;
  final String email;
  final String? password;
  final String? confirmpassword;
 
  AuthApiModel({
    required this.id,
    required this. fName,
    required this.lName,
    required this.email,
    this.password,
    this.confirmpassword,
  });
 
  factory AuthApiModel.empty() => AuthApiModel(
        id: '',
        fName: '',
        lName: '',
        email: '',
        password: '',
        confirmpassword: '',
      );
 
  factory AuthApiModel.fromJson(Map<String, dynamic> json) => _$AuthApiModelFromJson(json);
 
  Map<String, dynamic> toJson() => _$AuthApiModelToJson(this);
 
  AuthEntity toEntity() {
    return AuthEntity(
      id: id,
      fName: fName,
      lName: lName,
      email: email,
      password: password ?? '',
      confirmPassword: confirmpassword ?? '',
    );
  }
 
 
  static AuthApiModel fromEntity(AuthEntity entity) {
    return AuthApiModel(
      id: entity.userId ?? '',
      fName: entity.fName,
      lName: entity.lName,
      email: entity.email,
      password: entity.password,
      confirmpassword: entity.confirmPassword,
    );
  }
}