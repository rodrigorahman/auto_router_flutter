import 'package:auto_route/auto_route.dart';
import 'package:auto_router_flutter/home.dart';
import 'package:auto_router_flutter/page1.dart';
import 'package:auto_router_flutter/page2.dart';
import 'package:auto_router_flutter/page3.dart';
import 'package:auto_router_flutter/page4.dart';
import 'package:auto_router_flutter/routers/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
      builder: ExtendedNavigator<Router>(
        key: Get.key,
        router: Router(),
      ),
      // routes: {
      //   '/page1': (_) => Page1(),
      //   '/page2': (_) => Page2(),
      //   '/page3': (_) {
      //     var dados = ModalRoute.of(_).settings.arguments as Map;
      //     return Page3(nome: dados['nome'], idade: dados['idade'],);
      //   },
      //   '/page4': (_) => Page4(),
      // },
    );
  }
}
