import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/commen/animations/animate_do.dart';
import '../../../../../core/commen/widget/custom_linear_button.dart';
import '../../../../../core/commen/widget/text_app.dart';
import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/fonts/font_weight_helper.dart';

class LoginBottom extends StatelessWidget {
  const LoginBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
        duration: 600,
        child:CustomLinearButton(
          onPressed: (){},
          child: TextApp(
            text: context.translate(LangKeys.login),
            theme: context.textStyle.copyWith(
                fontSize: 18.sp, fontWeight: FontWeightHelper.bold
            ),
          ),
        ));
  }
}
