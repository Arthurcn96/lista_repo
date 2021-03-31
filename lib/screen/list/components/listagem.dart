import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../PDO/PDO_projeto.dart';

class Listagem extends StatelessWidget {  

  final double _borderRadius = 24;
  final Projeto _projeto;

  Listagem(Projeto projeto):_projeto = projeto;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        
        child: Stack(
          children: <Widget>[
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(_borderRadius),
                // gradient: LinearGradient(
                //   colors: [Colors.red, Colors.pink],
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 12,
                    offset: Offset(0,6),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: picSVG(_projeto.language),
                    flex: 2,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _projeto.name,
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            ),
                          ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          '${_projeto.description == null ? 'Sem Descrição' : _projeto.description}',
                          style: TextStyle(
                            color: Colors.black,
                            ),
                          ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          '${ _projeto.language == null ? 'Desconhecido' : _projeto.language}',
                          style: TextStyle(
                            color: Colors.purple[300],
                            ),
                          ),
                      ],
                    ),
                    flex: 7,
                  ),
                  Expanded(
                    child: SizedBox(),
                    flex:1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

SvgPicture picSVG(String language) {
  String asset = "assets/icons/";
  double w = 100;
  double h = 100;
  Color cor = null;

  try{

    asset = asset + language.toLowerCase() + ".svg";

  } catch ( e ){

      asset = asset + "notFound.svg";

  }

  return SvgPicture.asset(
          asset,
          width:  w,
          height: h,
          color: cor,
          semanticsLabel: language,
        );
}