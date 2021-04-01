import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.erros,
  }) : super(key: key);

  final List<String> erros;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(erros.length, (index) => formErroText(erro: erros[index])),
    );
  }

  Row formErroText({String erro}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Icon(
            Icons.error_outline_outlined,
            color: Colors.red,
            size: 16,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            erro,
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ]
      );
  }
}