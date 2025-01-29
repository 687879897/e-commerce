import 'package:asroo_store/core/routes/base_routes.dart';
import 'package:asroo_store/features/auth/presentation/screens/login_screen.dart';
import 'package:asroo_store/features/auth/presentation/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';

import '../commen/screens/under_build_screen.dart';

class AppRoutes{
  static const String login="login";
  static const String signup="signup";

  static Route<void> onGenerateRoute(RouteSettings settings){
   final arg =settings.arguments;
    switch(settings.name){
      case login:
        return BaseRoute(page:Login() );
        break;
      case signup:
        return BaseRoute(page: SignUp());
        break;
      default:
        return BaseRoute(page: const PageUnderBuildScreen());

    }
  }
}