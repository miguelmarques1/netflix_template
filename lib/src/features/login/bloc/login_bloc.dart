import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()){
    on<_LoginEventLogin>(_login);
  }



  Future<void> _login(_LoginEventLogin event, Emitter<LoginState> emit) async{
    emit(_LoginStateLoading());
  }
}