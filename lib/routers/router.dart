

import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_router_flutter/home.dart';
import 'package:auto_router_flutter/page1.dart';

import '../page2.dart';
import '../page3.dart';
import '../page4.dart';

@MaterialAutoRouter()
class $Router {

  @initial
  Home home;
  Page1 page1;
  Page2 page2;
  Page3 page3;
  Page4 page4;

}