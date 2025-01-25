import 'package:asroo_store/core/routes/base_routes.dart';
import 'package:asroo_store/features/testone.dart';
import 'package:flutter/cupertino.dart';

import '../commen/screens/under_build_screen.dart';

class AppRoutes{
  static const String login="login";
  static const String regester="regester";

  static Route<void> onGenerateRoute(RouteSettings settings){
   final arg =settings.arguments;
    switch(settings.name){
      case login:
        return BaseRoute(page:TestOne() );

       break;
      default:
        return BaseRoute(page: const PageUnderBuildScreen());

    }
  }
}