import 'package:equatable/equatable.dart';

sealed class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

final class RegisterInitial extends RegisterState {}

class LoadingRegsisterState extends RegisterState {}

class SucsessRegsisterState extends RegisterState {}

class ErrorRegsisterState extends RegisterState {
  final String message;

  const ErrorRegsisterState({required this.message});

  @override
  List<Object> get props => [message];
}
