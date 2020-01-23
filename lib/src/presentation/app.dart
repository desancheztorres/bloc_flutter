import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fultter_ultralifestyle/src/blocs/auth/authentication/bloc.dart';
import 'package:fultter_ultralifestyle/src/presentation/screens/loading_indicator.dart';

// Screens
import 'package:fultter_ultralifestyle/src/presentation/screens/screens.dart'
    show HomeScreen, SigninScreen, Splash, WelcomeScreen;

// Themes
import 'package:fultter_ultralifestyle/src/presentation/themes/themes.dart'
    show fitnessTheme;

// Routes
import 'package:fultter_ultralifestyle/src/presentation/utils/routes.dart';

class App extends StatelessWidget {
  const App({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: fitnessTheme(),
      routes: Routes.appRoutes,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationLoading) {
            return LoadingIndicator();
          }
          if (state is AuthenticationUnauthenticated) {
            return SigninScreen();
          }
          if (state is AuthenticationAuthenticated) {
            return HomeScreen();
          }

          return Splash();
        },
      ),
    );
  }
}
