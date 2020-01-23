import 'package:flutter/material.dart';

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fultter_ultralifestyle/src/blocs/auth/form/signup/bloc.dart';

// Utils
import 'package:fultter_ultralifestyle/src/presentation/utils/screen_ratio.dart';

// Content
import 'signup_content.dart';

class SignupScreen extends StatelessWidget {
  static const String routeName = "signup";

  const SignupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenRatio.setScreenRatio(
        MediaQuery.of(context).size.height, MediaQuery.of(context).size.width);
    return BlocProvider(
      create: (context) => SignupFormBloc(),
      child: Scaffold(
          body: SafeArea(
        child: SignupContent(),
      )),
    );
  }
}
