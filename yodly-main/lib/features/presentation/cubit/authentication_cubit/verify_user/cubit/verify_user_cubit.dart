import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yodly/features/domain/entites/authentication/verify_user_entity.dart';
import 'package:yodly/features/domain/usecase/authentication/verify_user_usecase.dart';

part 'verify_user_state.dart';

class VerifyUserCubit extends Cubit<VerifyUserState> {
  final VerifyUserUsecase verifyUserUsecase;
  VerifyUserCubit({required this.verifyUserUsecase})
      : super(VerifyUserInitial());

  void verifyUser(VerifyUserEntity verifyUserEntity) async {
    emit(LoadingVerifyUserState());

    try {
      await verifyUserUsecase.call(verifyUserEntity);
      emit(SucsessVerifyUserState());
    } catch (e) {
      if (e is FormatException) {
        emit(ErrorVerifyUserState(message: e.message));
      }
      rethrow;
    }
  }
}
