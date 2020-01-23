import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SignupFormEvent extends Equatable {
  const SignupFormEvent();

  @override
  List<Object> get props => [];
}

class NameChanged extends SignupFormEvent {
  final String name;

  const NameChanged({@required this.name});

  @override
  List<Object> get props => [name];

  @override
  String toString() => 'NameChanged { name: $name }';
}

class EmailChanged extends SignupFormEvent {
  final String email;

  const EmailChanged({@required this.email});

  @override
  List<Object> get props => [email];

  @override
  String toString() => 'EmailChanged { email: $email }';
}

class DobChanged extends SignupFormEvent {
  final String dob;

  const DobChanged({@required this.dob});

  @override
  List<Object> get props => [dob];

  @override
  String toString() => 'dobChanged { dob: $dob }';
}

class PasswordChanged extends SignupFormEvent {
  final String password;

  const PasswordChanged({@required this.password});

  @override
  String toString() => 'PasswordChanged { password: $password }';
}

class PasswordConfirmationChanged extends SignupFormEvent {
  final String passwordConfirmation;
  final String password;

  PasswordConfirmationChanged(
      {@required this.password, @required this.passwordConfirmation});

  @override
  List<Object> get props => [password, passwordConfirmation];

  @override
  String toString() =>
      'PasswordConfirmationChanged { passwordConfirmation: $passwordConfirmation }';
}

class FormSubmitted extends SignupFormEvent {
  @override
  String toString() => 'FormSubmitted';
}

class FormReset extends SignupFormEvent {
  @override
  String toString() => 'FormReset';
}
