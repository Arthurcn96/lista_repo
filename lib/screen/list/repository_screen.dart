import 'package:flutter/material.dart';
import 'package:lista_repo/screen/error/erro_screen.dart';
import '../../buildAppBar.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'components/listagem.dart';

import '../../PDO/PDO_projeto.dart';

class Repositories extends StatelessWidget {
  
static String routeName = "/repo";

List<Projeto> projetos = [];

  @override
  Widget build(BuildContext context) {
    //Pega os argumentos passados no Navigator
    final Map<String, Object>user = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: buildAppBar("Repositório"),
      body: Container(

        child: FutureBuilder(
          future: _getProjetos(context, user["user"]),
          builder: (BuildContext context, AsyncSnapshot snapshot){

            return ListView.builder(
              itemCount: projetos.length,
              itemBuilder: (context, index){
                var projeto = projetos[index];
                return Listagem(projeto);
              },

            );
          }
        ),
      )
    );
  }

    Future<List<Projeto>> _getProjetos(BuildContext context, String user ) async{
      String repository = user;
      var url = Uri.parse('https://api.github.com/users/${repository}/repos');
      var response = await http.get(url);
      print(response.statusCode.toString());
      if(response.statusCode.toString() == "200"){
        var jsonData = json.decode(response.body);

        for (var data in jsonData) {
          Projeto projeto = Projeto(data["name"],data["language"], data["url"], data["description"]);
          projetos.add(projeto);
        }
      }else if(response.statusCode.toString() == "404"){
        // Usuario nao existe
        Navigator.pushNamed(context, ErroScreen.routeName);

      }else{
        // Aqui que deu um ruim geral
      }


  }
}