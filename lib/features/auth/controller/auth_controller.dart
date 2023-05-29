import 'package:chatify/features/auth/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authControllerProvider = Provider((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthController(authRepository: authRepository);
});

class AuthController {
  final AuthRepository authRepository;
  AuthController({required this.authRepository});

  void signInWithPhone(BuildContext context, String phoneNumber) {
    authRepository.voidSignInWithPhone(context, phoneNumber);
  }

  void verifyOTP(BuildContext context, String verificationID, String userOTP) {
    authRepository.verifyOTP(
      context: context,
      verificationID: verificationID,
      userOTP: userOTP,
    );
  }
}
