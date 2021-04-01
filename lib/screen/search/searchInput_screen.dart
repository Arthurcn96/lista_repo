import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../buildAppBar.dart';
import 'components/body.dart';


class SearchRepoScreen extends StatelessWidget {
  static String routeName = "/search";

  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar("Usuário"),
      body: Body(),
          );
        }


}