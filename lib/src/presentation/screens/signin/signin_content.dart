import 'package:flutter/material.dart';

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fultter_ultralifestyle/src/blocs/auth/authentication/bloc.dart';
import 'package:fultter_ultralifestyle/src/blocs/auth/form/signin/bloc.dart';

// Screens
import 'package:fultter_ultralifestyle/src/presentation/screens/screens.dart'
    show PasswordResetScreen, SignupScreen;

// Widgets
import 'package:fultter_ultralifestyle/src/presentation/widgets/widgets.dart'
    show authHeader, primaryButton, socialButton, textInputWidget;

class SigninContent extends StatefulWidget {
  SigninContent({Key key}) : super(key: key);

  _SigninContentState createState() => _SigninContentState();
}

class _SigninContentState extends State<SigninContent> {
  SigninFormBloc _signinFormBloc;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _signinFormBloc = BlocProvider.of<SigninFormBloc>(context);
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    print(BlocProvider.of<AuthenticationBloc>(context).state);

    return BlocBuilder<SigninFormBloc, SigninFormState>(
      builder: (context, state) {
        if (state.formSubmittedSuccessfully) {
          final authData = {
            'email': _emailController.value.text,
            'password': _passwordController.value.text,
          };

          BlocProvider.of<AuthenticationBloc>(context).add(LoggedIn());

          _signinFormBloc.add(FormReset());
        }

        return Column(
          children: <Widget>[
            authHeader(size),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Sign in with",
                          style: Theme.of(context).textTheme.body1,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: socialButton(
                              bgColor: Color(0xFF475A96),
                              iconName: "facebookF",
                            ),
                          ),
                          SizedBox(width: 30.0),
                          Expanded(
                            child: socialButton(
                              bgColor: Color(0xFFDB4437),
                              iconName: "google",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "or",
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.body1,
                        ),
                      ),
                      SizedBox(height: 25.0),
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
                      primaryButton(
                        caption: "sign in",
                        context: context,
                        submit: state.isFormValid ? _onSubmitPressed : null,
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Text("Need an account?"),
                          FlatButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            textColor: Color(0xFF32AEE2),
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: "SF Pro Text",
                              ),
                            ),
                            onPressed: () => Navigator.pushReplacementNamed(
                              context,
                              SignupScreen.routeName,
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Forgot your password?"),
                            FlatButton(
                              padding: EdgeInsets.all(0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              textColor: Color(0xFF32AEE2),
                              child: Text(
                                "Reset",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: "SF Pro Text",
                                ),
                              ),
                              onPressed: () => Navigator.pushReplacementNamed(
                                context,
                                PasswordResetScreen.routeName,
                              ),
                            )
                          ],
                        ),
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
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onEmailChanged() {
    _signinFormBloc.add(EmailChanged(email: _emailController.text));
  }

  void _onPasswordChanged() {
    _signinFormBloc.add(PasswordChanged(password: _passwordController.text));
  }

  void _onSubmitPressed() {
    _signinFormBloc.add(FormSubmitted());
  }
}
