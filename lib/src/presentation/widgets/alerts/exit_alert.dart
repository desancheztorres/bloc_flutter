import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/screens/screens.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

exitAppAlert(context) {
  return Alert(
    context: context,
    title: "Ultra lifestyle",
    desc: "Would you like to leave the app?",
    buttons: [
      DialogButton(
        child: Text(
          "Cancel",
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        onPressed: () => Navigator.pop(context),
        color: Theme.of(context).accentColor,
      ),
      DialogButton(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Exit",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        onPressed: () {
          // _httpService.logout();
          Navigator.pushReplacementNamed(context, SigninScreen.routeName);
        },
      ),
    ],
  ).show();
}
