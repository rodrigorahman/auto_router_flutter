// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_router_flutter/home.dart';
import 'package:auto_router_flutter/page1.dart';
import 'package:auto_router_flutter/page2.dart';
import 'package:auto_router_flutter/page3.dart';
import 'package:auto_router_flutter/page4.dart';

abstract class Routes {
  static const home = '/';
  static const page1 = '/page1';
  static const page2 = '/page2';
  static const page3 = '/page3';
  static const page4 = '/page4';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute<dynamic>(
          builder: (context) => Home(),
          settings: settings,
        );
      case Routes.page1:
        return MaterialPageRoute<dynamic>(
          builder: (context) => Page1(),
          settings: settings,
        );
      case Routes.page2:
        if (hasInvalidArgs<Page2Arguments>(args)) {
          return misTypedArgsRoute<Page2Arguments>(args);
        }
        final typedArgs = args as Page2Arguments ?? Page2Arguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => Page2(key: typedArgs.key, nome: typedArgs.nome),
          settings: settings,
        );
      case Routes.page3:
        if (hasInvalidArgs<Page3Arguments>(args, isRequired: true)) {
          return misTypedArgsRoute<Page3Arguments>(args);
        }
        final typedArgs = args as Page3Arguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              Page3(nome: typedArgs.nome, idade: typedArgs.idade),
          settings: settings,
        );
      case Routes.page4:
        return MaterialPageRoute<dynamic>(
          builder: (context) => Page4(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//Page2 arguments holder class
class Page2Arguments {
  final Key key;
  final String nome;
  Page2Arguments({this.key, this.nome});
}

//Page3 arguments holder class
class Page3Arguments {
  final String nome;
  final String idade;
  Page3Arguments({@required this.nome, @required this.idade});
}
