import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SignupFormState extends Equatable {
  final String name;
  final bool isNameValid;
  final String email;
  final bool isEmailValid;
  final String dob;
  final bool isDobValid;
  final String password;
  final bool isPasswordValid;
  final String passwordConfirmation;
  final bool isPasswordConfirmationValid;
  final bool formSubmittedSuccessfully;

  bool get isFormValid =>
      isNameValid &&
      isEmailValid &&
      isDobValid &&
      isPasswordValid &&
      isPasswordConfirmationValid;

  const SignupFormState({
    @required this.name,
    @required this.isNameValid,
    @required this.email,
    @required this.isEmailValid,
    @required this.dob,
    @required this.isDobValid,
    @required this.password,
    @required this.isPasswordValid,
    @required this.passwordConfirmation,
    @required this.isPasswordConfirmationValid,
    @required this.formSubmittedSuccessfully,
  });

  factory SignupFormState.initial() {
    return SignupFormState(
      name: '',
      isNameValid: false,
      email: '',
      isEmailValid: false,
      dob: '',
      isDobValid: false,
      password: '',
      isPasswordValid: false,
      passwordConfirmation: '',
      isPasswordConfirmationValid: false,
      formSubmittedSuccessfully: false,
    );
  }

  SignupFormState copyWith({
    String name,
    bool isNameValid,
    String email,
    bool isEmailValid,
    String dob,
    bool isDobValid,
    String password,
    bool isPasswordValid,
    String passwordConfirmation,
    bool isPasswordConfirmationValid,
    bool formSubmittedSuccessfully,
  }) {
    return SignupFormState(
      name: name ?? this.name,
      isNameValid: isNameValid ?? this.isNameValid,
      email: email ?? this.email,
      isEmailValid: isEmailValid ?? this.isEmailValid,
      dob: dob ?? this.dob,
      isDobValid: isDobValid ?? this.isDobValid,
      password: password ?? this.password,
      isPasswordValid: isPasswordValid ?? this.isPasswordValid,
      passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
      isPasswordConfirmationValid:
          isPasswordConfirmationValid ?? this.isPasswordConfirmationValid,
      formSubmittedSuccessfully:
          formSubmittedSuccessfully ?? this.formSubmittedSuccessfully,
    );
  }

  @override
  List<Object> get props => [
        name,
        isNameValid,
        email,
        isEmailValid,
        dob,
        isDobValid,
        password,
        isPasswordValid,
        passwordConfirmation,
        isPasswordConfirmationValid,
        formSubmittedSuccessfully,
      ];

  @override
  String toString() {
    return '''SignupFormState {
      name: $name,
      isNameValid: $isNameValid,
      email: $email,
      isEmailValid: $isEmailValid,
      dob: $dob,
      isDobValid: $isDobValid,
      password: $password,
      isPasswordValid: $isPasswordValid,
      passwordConfirmation: $passwordConfirmation,
      isPasswordConfirmationValid: $isPasswordConfirmationValid,
      formSubmittedSuccessfully: $formSubmittedSuccessfully
    }''';
  }
}
