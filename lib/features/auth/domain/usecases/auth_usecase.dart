
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/core/failure/failure.dart';
import 'package:student_management_starter/features/auth/domain/entity/auth_entity.dart';
import 'package:student_management_starter/features/auth/domain/repository/i_auth_repository.dart';

final authUseCaseProvider = Provider((ref) {
  return AuthUseCase(authRepository: ref.watch(authRepositoryProvider));
});

class AuthUseCase {
  final IAuthRepository authRepository;

  AuthUseCase({required this.authRepository});

  Future<Either<Failure, bool>> registerUser(AuthEntity auth) {
    return authRepository.registerUser(auth);
  }

  Future<Either<Failure, bool>> loginUser(String email, String password) {
    return authRepository.loginUser(email, password);
  }
}