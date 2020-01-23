import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class PasswordResetFormBloc
    extends Bloc<PasswordResetFormEvent, PasswordResetFormState> {
  final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  PasswordResetFormState get initialState => PasswordResetFormState.initial();

  @override
  void onTransition(
      Transition<PasswordResetFormEvent, PasswordResetFormState> transition) {
    // print(transition);
  }

  @override
  Stream<PasswordResetFormState> mapEventToState(
    PasswordResetFormEvent event,
  ) async* {
    if (event is EmailChanged) {
      yield state.copyWith(
        email: event.email,
        isEmailValid: _isEmailValid(event.email),
      );
    }
    if (event is FormSubmitted) {
      yield state.copyWith(formSubmittedSuccessfully: true);
    }
    if (event is FormReset) {
      yield PasswordResetFormState.initial();
    }
  }

  bool _isEmailValid(String email) {
    return _emailRegExp.hasMatch(email);
  }
}
