import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:lista_repo/screen/list/listagem.dart';

import '../../PDO/PDO_projeto.dart';

class Repositories extends StatelessWidget {
List<Projeto> projetos = [];

    Future<List<Projeto>> _getProjetos() async{
    String repository = "Arthurcn96";
    var url = Uri.parse('https://api.github.com/users/${repository}/repos');

    var response = await http.get(url);

    var jsonData = json.decode(response.body);

    for (var data in jsonData) {
      Projeto projeto = Projeto(data["name"],data["language"], data["url"], data["description"]);

      projetos.add(projeto);

    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text('Repositorio'),
        flexibleSpace: Container(
          color: Colors.blue,
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //         end: Alignment.bottomRight,
        //         colors: <Color>[
        //         Colors.blue,
        //         Colors.purple,
        //       ]
        //     )          
        //   ),        
        ),   
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                Colors.blue[100],
                Colors.purple[50],
              ]
            )          
          ), 
        child: FutureBuilder(
          future: _getProjetos(),
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
}