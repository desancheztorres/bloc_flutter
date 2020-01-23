import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class SignupFormBloc extends Bloc<SignupFormEvent, SignupFormState> {
  final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  final RegExp _passwordRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );

  @override
  SignupFormState get initialState => SignupFormState.initial();

  @override
  void onTransition(Transition<SignupFormEvent, SignupFormState> transition) {
    // print(transition);
  }

  @override
  Stream<SignupFormState> mapEventToState(
    SignupFormEvent event,
  ) async* {
    if (event is NameChanged) {
      yield state.copyWith(
        name: event.name,
        isNameValid: _isNameValid(event.name),
      );
    }
    if (event is EmailChanged) {
      yield state.copyWith(
        email: event.email,
        isEmailValid: _isEmailValid(event.email),
      );
    }
    if (event is DobChanged) {
      yield state.copyWith(
        dob: event.dob,
        isDobValid: _isDobValid(event.dob),
      );
    }
    if (event is PasswordChanged) {
      yield state.copyWith(
        password: event.password,
        isPasswordValid: _isPasswordValid(event.password),
      );
    }
    if (event is PasswordConfirmationChanged) {
      yield state.copyWith(
        passwordConfirmation: event.passwordConfirmation,
        isPasswordConfirmationValid: _isPasswordConfirmationValid(
          event.password,
          event.passwordConfirmation,
        ),
      );
    }
    if (event is FormSubmitted) {
      yield state.copyWith(formSubmittedSuccessfully: true);
    }
    if (event is FormReset) {
      yield SignupFormState.initial();
    }
  }

  bool _isNameValid(String name) {
    return name.length >= 6;
  }

  bool _isEmailValid(String email) {
    return _emailRegExp.hasMatch(email);
  }

  _isDobValid(String birthDate) {
    DateTime currentDate = DateTime.now();
    DateTime date = DateTime.parse(birthDate);
    int age = currentDate.year - date.year;
    int month1 = currentDate.month;
    int month2 = date.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = date.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age >= 16;
  }

  bool _isPasswordValid(String password) {
    return _passwordRegExp.hasMatch(password);
  }

  bool _isPasswordConfirmationValid(
      String password, String passwordConfirmation) {
    return password == passwordConfirmation;
  }
}
