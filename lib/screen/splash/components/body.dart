import 'package:flutter/material.dart';
import 'package:lista_repo/screen/search/searchInput_screen.dart';

import '../../../default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex:10,
                  child: Column(
                    children: <Widget>[
                      Spacer(),

                      Text(
                        "Bem vindo",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.blue[700],
                          fontSize: 62,
                        ),
                      ),
                      Text(
                        "Aplicativo de Listagem de repositório",
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(flex:3),
                      Image.asset(
                        "assets/images/Octocat1.png",
                      ),
                    ],
                  ),
                ),
              Expanded(
                flex:1,
                child: SizedBox(),
              ),
                DefaultButton(
                  text: "Continue",
                  press: (){Navigator.pushNamed(context, SearchRepoScreen.routeName);},
                ),
                Spacer(flex:1),
            ],
          ),
        ),
      ),
    );
  }
}

