import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/body.dart';


class SearchRepoScreen extends StatelessWidget {
  static String routeName = "/search";

  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Usuário",
          style:TextStyle(
            color: Colors.black,
          ) ,
        ),
        centerTitle: true,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Body(),
          );
        }
      }