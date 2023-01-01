part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState.initial() = _LoginStateInitial;
  factory LoginState.loading() = _LoginStateLoading;
}