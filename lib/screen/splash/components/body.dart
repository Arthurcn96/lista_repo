import 'package:flutter/material.dart';

import '../../list/repository_screen.dart';

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
        child: Column(
          children: <Widget>[
            Expanded(
              flex:4,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: <Widget>[
                    Spacer(),

                    Text(
                      "Bem vindo",
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w800,
                        color: Colors.blue[700],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Aplicativo de Listagem de repositório",
                      style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(flex:10),
                    Image.asset(
                      "assets/images/splash.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex:1,
              child:SizedBox(
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  onPressed: () {
                    Navigator.pushNamed(context, Repositories.routeName);
                  },
                  color: Colors.blue,
                  child: Text("Continuar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}