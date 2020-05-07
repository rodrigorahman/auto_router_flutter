import 'package:auto_route/auto_route.dart';
import 'package:auto_router_flutter/page2.dart';
import 'package:auto_router_flutter/routers/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.page1);
              },
              child: Text('Page1'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.page2, arguments: Page2Arguments(nome: 'Rodrigo Rahman'));
                // ExtendedNavigator.ofRouter().pushNamed(Routes.page2, arguments: Page2Arguments(nome: 'Rodrigo Rahman'));
                // Navigator.of(context).pushNamed('/page2', arguments: "Rodrigo Rahman");
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(nome: 'Rodrigo Rahman')));
              },
              child: Text('Page2'),
            ),
            RaisedButton(
              onPressed: () {
                Get.toNamed(Routes.page3, arguments: Page3Arguments(nome: 'Rodrigo Rahman', idade: '35 anos'));
                // Navigator.of(context).pushNamed(Routes.page3, arguments: Page3Arguments(nome: 'Rodrigo Rahman', idade: '35 anos'));
              },
              child: Text('Page3'),
            ),
            RaisedButton(
              onPressed: () {
                Get.toNamed(Routes.page4);
                Get.snackbar('title', 'message');
              },
              child: Text('Page4'),
            ),
          ],
        ),
      ),
    );
  }
}
