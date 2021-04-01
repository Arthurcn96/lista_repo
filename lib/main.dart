
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lista_repo/screen/splash/splash_screen.dart';
import 'routes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light, 
      //home: Repositories()
      // initialRoute: SplashScreen.routeName,
      // initialRoute: ErroScreen.routeName,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
