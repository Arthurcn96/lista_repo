import 'package:flutter/material.dart';
import 'form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  SizedBox(
        width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
              children: [
                Image.asset(
                          "assets/images/Octocat3.png",
                        ),
                Text(
                  "Vamos!",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.blue[700],
                    fontSize: 62,
                  ),
                ),
                Text(
                  "Me diga o nome do usuário que \ndirei os repositórios...",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                SearchForm(),
              ],
        ),
            ),
          ),
      ),
    );
  }
}


