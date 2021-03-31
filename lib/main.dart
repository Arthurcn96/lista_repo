
import 'package:flutter/material.dart';
import 'package:lista_repo/screen/splash/splash_screen.dart';

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
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
