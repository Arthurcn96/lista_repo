import 'package:flutter/material.dart';

  AppBar buildAppBar(String text) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        text,
        style:TextStyle(
          color: Colors.black,
        ) ,
      ),
      centerTitle: true,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }