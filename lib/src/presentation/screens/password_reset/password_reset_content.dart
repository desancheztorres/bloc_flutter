import 'package:flutter/material.dart';

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fultter_ultralifestyle/src/blocs/auth/form/password_reset/bloc.dart';

// Widgets
import 'package:fultter_ultralifestyle/src/presentation/widgets/widgets.dart'
    show authHeader, primaryButton, textInputWidget;

// Screens
import 'package:fultter_ultralifestyle/src/presentation/screens/screens.dart';

class PasswordResetContent extends StatefulWidget {
  PasswordResetContent({Key key}) : super(key: key);

  _PasswordResetContentState createState() => _PasswordResetContentState();
}

class _PasswordResetContentState extends State<PasswordResetContent> {
  PasswordResetFormBloc _passwordResetFormBloc;

  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _passwordResetFormBloc = BlocProvider.of<PasswordResetFormBloc>(context);
    _emailController.addListener(_onEmailChanged);
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return BlocBuilder<PasswordResetFormBloc, PasswordResetFormState>(
      builder: (context, state) {
        if (state.formSubmittedSuccessfully) {
          print('ok');

          _emailController.clear();
          _passwordResetFormBloc.add(FormReset());
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Reset your password",
                          style: Theme.of(context).textTheme.body1,
                        ),
                      ),
                      SizedBox(height: 10.0),
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
                      primaryButton(
                        caption: "Reset password",
                        context: context,
                        submit: () =>
                            _passwordResetFormBloc.add(FormSubmitted()),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Text("Already reset the password?"),
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
                          ),
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

  void _onEmailChanged() {
    _passwordResetFormBloc.add(EmailChanged(email: _emailController.text));
  }
}
