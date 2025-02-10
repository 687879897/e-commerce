import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/features/auth/presentation/widgets/signup/user_avatar_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/commen/animations/animate_do.dart';
import '../../../../core/commen/widget/text_app.dart';
import '../../../../core/language/lang_keys.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/style/fonts/font_weight_helper.dart';
import '../widgets/auth_title_info.dart';
import '../widgets/dark_and_lang_buttons.dart';
import '../widgets/signup/sign_up_button.dart';
import '../widgets/signup/sign_up_text_form.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //dark mode and language
              const DarkAndLangButtons(),
              SizedBox(height: 50.h,),
              //welcome info
              AuthTitleInfo(
                  description:context.translate(LangKeys.signUpWelcome) ,
                  title: context.translate(LangKeys.signUp)
              ),
              SizedBox(height: 30.h,),
              const UserAvararImage(),
              SizedBox(height: 30.h,),
              const SignUpTextForm(),
              SizedBox(height: 30.h,),

              SignUpButton(),
              SizedBox(height: 30.h,),


              CustomFadeInDown(
                duration: 400,
                child: TextButton(
                  onPressed: () {
                    context.pushReplacementNamed(AppRoutes.login);
                  },
                  child: TextApp(
                    text: context.translate(LangKeys.youHaveAccount),
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
