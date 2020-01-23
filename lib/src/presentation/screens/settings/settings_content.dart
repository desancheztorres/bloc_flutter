import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/widgets/widgets.dart'
    show SettingWidget, primaryButton;

class SettingsContent extends StatelessWidget {
  const SettingsContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> _options = [
      {
        "icon": "account_box",
        "name": "Account",
        "color": 0xFFFF8C00,
      },
      {
        "icon": "notifications",
        "name": "Notifications",
        "color": 0xFF535455,
      },
      {
        "icon": "lock",
        "name": "Privacy",
        "color": 0xFF535455,
      },
      {
        "icon": "people",
        "name": "About",
        "color": 0xFF535455,
      },
      {
        "icon": "language",
        "name": "Language",
        "color": 0xFF535455,
      },
      {
        "icon": "book",
        "name": "My Library",
        "color": 0xFF535455,
      },
      {
        "icon": "delete",
        "name": "Clear Cache",
        "color": 0xFFE42346,
      },
    ];

    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _options.length,
              itemBuilder: (BuildContext context, int index) {
                final option = _options[index];

                return SettingWidget(
                  option: option,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: primaryButton(
              caption: "log out".toUpperCase(),
              context: context,
              submit: () {},
            ),
          )
        ],
      ),
    );
  }
}
