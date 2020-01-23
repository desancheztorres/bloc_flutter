import 'package:flutter/material.dart';

Widget textInputWidget({
  @required controller,
  @required labelText,
  @required hintText,
  Function validator,
  onTap,
  bool autovalidate = false,
  obscureText = false,
}) {
  return Container(
    height: 50.0,
    child: TextFormField(
      onTap: onTap,
      obscureText: obscureText,
      style: TextStyle(
        fontSize: 14.0,
      ),
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          top: 19.0,
          left: 15.0,
          bottom: 17.0,
        ),
        filled: false,
        fillColor: Colors.black45,
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(12.0),
          ),
        ),
        labelText: labelText,
        hintText: hintText,
      ),
      autovalidate: autovalidate,
      validator: validator,
    ),
  );
}
