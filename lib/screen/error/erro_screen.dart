import 'package:flutter/material.dart';
import 'components/body.dart';


class ErroScreen extends StatelessWidget {
  static String routeName = "/error";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Body(),
    );
  }
}