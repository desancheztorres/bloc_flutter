import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class SigninFormEvent extends Equatable {
  const SigninFormEvent();

  @override
  List<Object> get props => [];
}

class EmailChanged extends SigninFormEvent {
  final String email;

  const EmailChanged({@required this.email});

  @override
  List<Object> get props => [email];

  @override
  String toString() => 'EmailChanged { email: $email }';
}

class PasswordChanged extends SigninFormEvent {
  final String password;

  const PasswordChanged({@required this.password});

  @override
  List<Object> get props => [password];

  @override
  String toString() => 'PasswordChanged { password: $password }';
}

class FormSubmitted extends SigninFormEvent {}

class FormReset extends SigninFormEvent {}
