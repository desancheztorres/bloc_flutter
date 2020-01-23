import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/screens/settings/settings_content.dart';

// Widgets
import 'package:fultter_ultralifestyle/src/presentation/widgets/widgets.dart'
    show gradientAppBar;

class SettingsScreen extends StatelessWidget {
  static const String routeName = "settings";
  const SettingsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: gradientAppBar(),
      body: SettingsContent(),
    );
  }
}
