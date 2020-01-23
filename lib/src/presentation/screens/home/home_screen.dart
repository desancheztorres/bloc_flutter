import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fultter_ultralifestyle/src/blocs/auth/authentication/bloc.dart';

// Utils
import 'package:fultter_ultralifestyle/src/presentation/utils/screen_ratio.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);

    BlocProvider.of<AuthenticationBloc>(context).state;

    ScreenRatio.setScreenRatio(
      _mediaQuery.size.height,
      _mediaQuery.size.width,
    );

    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
          },
          child: Text("Log out"),
        ),
      ),
    );
  }
}
