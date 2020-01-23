import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PasswordResetFormState extends Equatable {
  final String email;
  final bool isEmailValid;
  final bool formSubmittedSuccessfully;

  bool get isFormValid => isEmailValid;

  const PasswordResetFormState({
    @required this.email,
    @required this.isEmailValid,
    @required this.formSubmittedSuccessfully,
  });

  factory PasswordResetFormState.initial() {
    return PasswordResetFormState(
      email: '',
      isEmailValid: false,
      formSubmittedSuccessfully: false,
    );
  }

  PasswordResetFormState copyWith({
    String email,
    bool isEmailValid,
    bool formSubmittedSuccessfully,
  }) {
    return PasswordResetFormState(
      email: email ?? this.email,
      isEmailValid: isEmailValid ?? this.isEmailValid,
      formSubmittedSuccessfully:
      formSubmittedSuccessfully ?? this.formSubmittedSuccessfully,
    );
  }

  @override
  List<Object> get props => [
    email,
    isEmailValid,
    formSubmittedSuccessfully,
  ];

  @override
  String toString() {
    return '''PasswordResetFormState {
      email: $email,
      isEmailValid: $isEmailValid,
      formSubmittedSuccessfully: $formSubmittedSuccessfully
    }''';
  }
}
