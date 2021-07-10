import 'package:flutter/material.dart';

class UserColors {
  static const blue = Colors.blue;
  static const grey = Color.fromRGBO(220,220,220, .5);
}

class UserDefined {
  formDecor({String? text, double? sizeFont, Icon? icon}) {
    return InputDecoration(
      hoverColor: Colors.transparent,
      hintText: text,
      suffixIcon:  icon,
      hintStyle: TextStyle(
        fontSize: sizeFont,
        color: Colors.grey,
        fontWeight: FontWeight.normal,
        letterSpacing: 1
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
      filled: true,
      fillColor: UserColors.grey,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
    );
  }

  buttonDecor() {
    return ElevatedButton.styleFrom(
        elevation: 10,
        primary: UserColors.blue,
        side: BorderSide(
          color: UserColors.grey,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))));
  }

  styleText({required double size}) {
    return TextStyle(fontSize: size);
  }
}
