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
                flex:12,
                  child: Column(
                    children: <Widget>[
                      Spacer(),

                      Text(
                        "Opss...",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.blue[700],
                          fontSize: 58,
                        ),
                      ),
                      Text(
                        "Não consegui achar esse usuário \nDigitou o nome certo?",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(flex:3),
                      Image.asset(
                        "assets/images/Octocat404.png",
                      ),
                    ],
                  ),
                ),
              Expanded(
                flex:1,
                child: SizedBox(),
              ),
              DefaultButton(
                text: "Voltar",
                press: (){Navigator.pushNamed(context, SearchRepoScreen.routeName);},
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

