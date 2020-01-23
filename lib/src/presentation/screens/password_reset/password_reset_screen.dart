import 'package:flutter/material.dart';

// Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fultter_ultralifestyle/src/blocs/auth/form/password_reset/bloc.dart';

// Content
import 'package:fultter_ultralifestyle/src/presentation/screens/password_reset/password_reset_content.dart';

// Utils
import 'package:fultter_ultralifestyle/src/presentation/utils/screen_ratio.dart';

class PasswordResetScreen extends StatelessWidget {
  static const String routeName = "resetPassword";

  const PasswordResetScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenRatio.setScreenRatio(
        MediaQuery.of(context).size.height, MediaQuery.of(context).size.width);
    return BlocProvider(
      create: (context) => PasswordResetFormBloc(),
      child: Scaffold(
        body: SafeArea(
          child: PasswordResetContent(),
        ),
      ),
    );
  }
}
