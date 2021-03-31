import 'package:flutter/material.dart';
import 'package:lista_repo/screen/search/searchInput_screen.dart';

import 'screen/list/repository_screen.dart';
import 'screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  Repositories.routeName: (context) => Repositories(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SearchRepoScreen.routeName: (context) => SearchRepoScreen(),
};