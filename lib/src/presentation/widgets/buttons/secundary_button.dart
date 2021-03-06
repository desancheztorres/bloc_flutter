import 'package:flutter/material.dart';
import 'package:fultter_ultralifestyle/src/presentation/utils/capitalize.dart';

Widget secundaryButton({
  @required BuildContext context,
  @required caption,
  @required Function submit,
}) {
  return Container(
    height: 50.0,
    width: double.infinity,
    child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
        // side: BorderSide(color: Colors.red),
      ),
      padding: EdgeInsets.only(
        top: 18.0,
        bottom: 18.0,
      ),
      color: Colors.white,
      textColor: Theme.of(context).primaryColor,
      child: Text(
        capitalize(caption),
        style: TextStyle(
          fontFamily: "SF Pro Text Bold",
          fontSize: 12.0,
        ),
      ),
      onPressed: submit,
    ),
  );
}
