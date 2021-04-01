import 'package:flutter/material.dart';
import 'package:lista_repo/default_button.dart';

import '../../../form_error.dart';
import '../../list/repository_screen.dart';

class SearchForm extends StatefulWidget {
  @override
  _SearchFormState createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
final _formKey = GlobalKey<FormState>();
final List<String> erros = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
                if (value.isEmpty && erros.length == 0) {
                  setState(() {
                      erros.add("Digite o nome do Usuario");
                  });
                }else if(value.isNotEmpty){
                  setState(() {
                      erros.remove("Digite o nome do Usuario");
                      Navigator.pushNamed(
                        context,
                        Repositories.routeName,
                        arguments: {
                          "user": value,
                        } );
                  });
                }
            },
            decoration: InputDecoration(
              
              labelText: "User",
              hintText: "Usuário",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Padding(
                padding: EdgeInsets.fromLTRB(0,20,20,20),
                child: Icon(
                  Icons.person_rounded,
                  color: Colors.blue,
                  size: 24,
                  ),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal:42,
                vertical: 20,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: BorderSide(color: Colors.blue[200]),
                gapPadding: 10,
              ),
            ),
          ),
          SizedBox(height: 25),
          FormError(erros: erros),
          SizedBox(height: 25),

          DefaultButton(
            text: "Mostra",
            press: (){
              if(_formKey.currentState.validate()){
                _formKey.currentState.save();
              }
            },
          )
        ]
      ),
      
    );
  }
}

