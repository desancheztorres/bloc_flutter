import 'package:flutter/material.dart';

// Blocs
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fultter_ultralifestyle/src/blocs/auth/form/signin/bloc.dart';

// Utils
import 'package:fultter_ultralifestyle/src/presentation/utils/screen_ratio.dart';

// Content
import 'package:fultter_ultralifestyle/src/presentation/screens/signin/signin_content.dart';

class SigninScreen extends StatelessWidget {
  static const String routeName = "signin";

  const SigninScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenRatio.setScreenRatio(
      MediaQuery.of(context).size.height,
      MediaQuery.of(context).size.width,
    );
    return BlocProvider(
      create: (context) => SigninFormBloc(),
      child: Scaffold(
        body: SafeArea(
          child: SigninContent(),
        ),
      ),
    );
  }
}
