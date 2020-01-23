import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/blocs/auth/authentication/bloc.dart';
import 'package:intl/intl.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fultter_ultralifestyle/src/blocs/auth/form/signup/bloc.dart';

// Widgets
import 'package:fultter_ultralifestyle/src/presentation/widgets/widgets.dart'
    show authHeader, buildSnackbar, primaryButton, textInputWidget;

// Screens
import 'package:fultter_ultralifestyle/src/presentation/screens/screens.dart'
    show SigninScreen;

class SignupContent extends StatefulWidget {
  SignupContent({Key key}) : super(key: key);

  _SignupContentState createState() => _SignupContentState();
}

class _SignupContentState extends State<SignupContent> {
  final storage = new FlutterSecureStorage();
  SignupFormBloc _signupFormBloc;

  DateTime _selectedDate = DateTime(1970);
  var myFormat = DateFormat('d-MM-yyyy');

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _signupFormBloc = BlocProvider.of<SignupFormBloc>(context);
    _nameController.addListener(_onNameChanged);
    _emailController.addListener(_onEmailChanged);
    _dobController.addListener(_onDobChanged);
    _passwordController.addListener(_onPasswordChanged);
    _passwordConfirmationController.addListener(_onPasswordConfirmationChanged);
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    print(BlocProvider.of<AuthenticationBloc>(context).state);

    return BlocBuilder<SignupFormBloc, SignupFormState>(
      builder: (context, state) {
        if (state.formSubmittedSuccessfully) {
          final userData = {
            'name': _nameController.value.text,
            'email': _emailController.value.text,
            'password': _passwordController.value.text,
          };

          BlocProvider.of<AuthenticationBloc>(context).add(
            SignedUp(
              email: userData["email"],
              password: userData["password"],
            ),
          );

          // _nameController.clear();
          // _emailController.clear();
          // _dobController.clear();
          // _passwordController.clear();
          // _passwordConfirmationController.clear();
          _signupFormBloc.add(FormReset());
        }

        return Column(
          children: <Widget>[
            authHeader(_size),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: 16.0),
                  padding: EdgeInsets.only(
                    top: 29.0,
                    left: 14.0,
                    right: 14.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      textInputWidget(
                        controller: _nameController,
                        labelText: "Name",
                        hintText: 'Enter a valid name',
                        autovalidate: state.name.isEmpty ? false : true,
                        validator: (_) {
                          return state.isNameValid
                              ? null
                              : 'At least 6 characters long.';
                        },
                      ),
                      SizedBox(height: 20.0),
                      textInputWidget(
                        controller: _emailController,
                        labelText: "Email",
                        hintText: 'Enter a valid email',
                        autovalidate: state.email.isEmpty ? false : true,
                        validator: (_) {
                          return state.isEmailValid ? null : 'Invalid Email';
                        },
                      ),
                      SizedBox(height: 20.0),
                      textInputWidget(
                        controller: _dobController,
                        labelText: "Date of Birth",
                        hintText: 'Enter a valid dob',
                        onTap: () {
                          _selectDate(context);
                        },
                        autovalidate: state.dob.isEmpty ? false : true,
                        validator: (_) {
                          return state.isDobValid
                              ? null
                              : 'You must be over 16 years old';
                        },
                      ),
                      SizedBox(height: 20.0),
                      textInputWidget(
                        controller: _passwordController,
                        labelText: "Password",
                        hintText: 'Enter a valid password',
                        obscureText: true,
                        autovalidate: state.password.isEmpty ? false : true,
                        validator: (_) {
                          return state.isPasswordValid
                              ? null
                              : 'Invalid Password';
                        },
                      ),
                      SizedBox(height: 20.0),
                      textInputWidget(
                        controller: _passwordConfirmationController,
                        labelText: "Password Confirmation",
                        hintText: 'Enter a valid password',
                        autovalidate:
                            state.passwordConfirmation.isEmpty ? false : true,
                        validator: (_) {
                          return state.isPasswordConfirmationValid
                              ? null
                              : 'Invalid Password';
                        },
                        obscureText: true,
                      ),
                      SizedBox(height: 20.0),
                      primaryButton(
                        caption: "sign up",
                        context: context,
                        submit: state.isFormValid ? _onSubmitPressed : null,
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Text("Already Registered?"),
                          FlatButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            textColor: Color(0xFF32AEE2),
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: "SF Pro Text",
                              ),
                            ),
                            onPressed: () => Navigator.pushReplacementNamed(
                              context,
                              SigninScreen.routeName,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _dobController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();
    super.dispose();
  }

  void _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1970),
      lastDate: _calculateMinAge(),
    );

    if (picked == null) {
      return;
    }

    setState(() {
      _dobController.text = myFormat.format(picked);
      _selectedDate = picked;
    });
  }

  void _onNameChanged() {
    _signupFormBloc.add(NameChanged(name: _nameController.text));
  }

  void _onEmailChanged() {
    _signupFormBloc.add(EmailChanged(email: _emailController.text));
  }

  void _onDobChanged() async {
    _signupFormBloc.add(
      DobChanged(dob: _selectedDate.toString()),
    );
    await storage.write(key: "dob", value: _selectedDate.toString());
  }

  void _onPasswordChanged() {
    _signupFormBloc.add(PasswordChanged(password: _passwordController.text));
  }

  void _onPasswordConfirmationChanged() {
    _signupFormBloc.add(
      PasswordConfirmationChanged(
        password: _passwordController.text,
        passwordConfirmation: _passwordConfirmationController.text,
      ),
    );
  }

  void _onSubmitPressed() {
    _signupFormBloc.add(
      FormSubmitted(),
    );
  }

  _calculateMinAge() {
    DateTime currentDate = DateTime.now();
    int year = currentDate.year - 16;

    return DateTime(year);
  }
}
