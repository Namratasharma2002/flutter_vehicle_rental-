
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/core/failure/failure.dart';
import 'package:student_management_starter/features/auth/domain/entity/auth_entity.dart';
import 'package:student_management_starter/features/auth/domain/repository/AuthLocalRepository.dart';
import 'package:student_management_starter/features/auth/domain/repository/authLocalDataSourceProvider.dart';

final authRepositoryProvider = Provider<IAuthRepository>((ref) {
  return AuthLocalRepository(
      authLocalDataSource: ref.read(authLocalDataSourceProvider));
});

abstract class IAuthRepository {
  Future<Either<Failure, bool>> registerUser(AuthEntity user);
  Future<Either<Failure, bool>> loginUser(String email, String password);
}