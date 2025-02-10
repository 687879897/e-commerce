import 'package:asroo_store/core/routes/base_routes.dart';
import 'package:asroo_store/features/auth/presentation/screens/login_screen.dart';
import 'package:asroo_store/features/auth/presentation/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/admin/home_admin/presentation/screens/home_admin_screen.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/customer/screencoustomer.dart';
import '../app/upload_image/cubit/upload_image_cubit.dart';
import '../commen/screens/under_build_screen.dart';
import '../di/injection_container.dart';

class AppRoutes{
  static const String login="login";
  static const String signup="signup";
  static const String mainCustomer="HomeCustomer";
  static const String homeAdmin="HomeAdmin";

  static Route<void> onGenerateRoute(RouteSettings settings){
   final arg =settings.arguments;
    switch(settings.name){
      case login:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => sl<AuthBloc>(),
            child: const Login(),
          ),
        );
      case signup:
        return BaseRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => sl<UploadImageCubit>(),
              ),
              BlocProvider(
                create: (context) => sl<AuthBloc>(),
              ),
            ],
            child: const SignUp(),
          ),
        );
        break;
      case homeAdmin:
        return BaseRoute(page: HomeAdminScreen());
        break;
      case mainCustomer:
        return BaseRoute(page: HomeCustomer());
        break;
      default:
        return BaseRoute(page: const PageUnderBuildScreen());

    }
  }
}