import 'package:yodly/features/domain/entites/authentication/send_email_verification_code_entity.dart';
import 'package:yodly/features/domain/repositories/authentication/authentication_repository.dart';

class SendEmailVerificationCodeUsecase {
  final SendEmailVerificationCodeRepository repository;

  SendEmailVerificationCodeUsecase({required this.repository});

  Future<void> call(
      SendEmailVerificationCodeEntity emailVerificationCodeEntity) async {
    return await repository
        .sendEmailVerificationCode(emailVerificationCodeEntity);
  }
}
