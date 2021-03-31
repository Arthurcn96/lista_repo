
import 'package:flutter/material.dart';

import 'routes.dart';
import 'screen/list/repository_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      //home: Repositories()
      initialRoute: Repositories.routeName,
      routes: routes,
    );
  }
}
