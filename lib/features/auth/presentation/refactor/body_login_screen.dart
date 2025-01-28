
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:asroo_store/features/auth/presentation/widgets/dark_and_lang_buttons.dart';
import 'package:asroo_store/features/auth/presentation/widgets/login/login_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/commen/animations/animate_do.dart';
import '../../../../core/commen/widget/text_app.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/style/fonts/font_weight_helper.dart';


class LoginBody extends StatelessWidget {
  const LoginBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //dark mode and language
            const DarkAndLangButtons(),
            SizedBox(height: 50.h,),
            //welcome info
            AuthTitleInfo(
                description:context.translate(LangKeys.welcome) ,
                title: context.translate(LangKeys.login)
            ),
            SizedBox(height: 30.h,),
            const LoginTextForm(),
        CustomFadeInDown(
          duration: 400,
          child: TextButton(
            onPressed: () {
              context.pushReplacementNamed(AppRoutes.signup);
            },
            child: TextApp(
              text: context.translate(LangKeys.createAccount),
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
                color: context.color.bluePinkLight,
              ),
            ),
          ),

        )
          ],
        ),
      )
    );
  }
}