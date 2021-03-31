import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key, this.text, this.press,
  }) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          onPressed: press,
          color: Colors.blue,
          child: Text(text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
      );
  }
}