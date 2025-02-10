import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/features/auth/presentation/refactor/sign_up_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../refactor/auth_custom_painter.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(
            MediaQuery.of(context).size.width,
            150.h
        ),
        painter: AuthCustomPainter(
          gradient: LinearGradient(
            colors: [
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkDark!,
            ],
          ),
        ),

      ),
      body: SignupBody(),
    );
  }
}
