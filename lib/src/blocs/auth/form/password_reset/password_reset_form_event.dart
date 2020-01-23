import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class PasswordResetFormEvent extends Equatable {
  const PasswordResetFormEvent();

  @override
  List<Object> get props => [];
}

class EmailChanged extends PasswordResetFormEvent {
  final String email;

  const EmailChanged({@required this.email});

  @override
  List<Object> get props => [email];

  @override
  String toString() => 'EmailChanged { email: $email }';
}

class FormSubmitted extends PasswordResetFormEvent {
  @override
  String toString() => 'FormSubmitted';
}

class FormReset extends PasswordResetFormEvent {
  @override
  String toString() => 'FormReset';
}
