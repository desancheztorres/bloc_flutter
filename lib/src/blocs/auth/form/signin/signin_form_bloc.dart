import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class SigninFormBloc extends Bloc<SigninFormEvent, SigninFormState> {
  final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  SigninFormState get initialState => SigninFormState.initial();

  @override
  void onTransition(Transition<SigninFormEvent, SigninFormState> transition) {
    print(transition);
  }

  @override
  Stream<SigninFormState> mapEventToState(
    SigninFormEvent event,
  ) async* {
    if (event is EmailChanged) {
      yield state.copyWith(
        email: event.email,
        isEmailValid: _isEmailValid(event.email),
      );
    }
    if (event is PasswordChanged) {
      yield state.copyWith(
        password: event.password,
        isPasswordValid: _isPasswordValid(event.password),
      );
    }
    if (event is FormSubmitted) {
      yield state.copyWith(formSubmittedSuccessfully: true);
    }
    if (event is FormReset) {
      yield SigninFormState.initial();
    }
  }

  bool _isEmailValid(String email) {
    return _emailRegExp.hasMatch(email);
  }

  bool _isPasswordValid(String password) {
    return password.isNotEmpty;
  }
}
