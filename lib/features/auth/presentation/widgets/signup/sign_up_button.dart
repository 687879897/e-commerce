import 'package:asroo_store/core/commen/animations/animate_do.dart';
import 'package:asroo_store/core/commen/widget/custom_linear_button.dart';
import 'package:asroo_store/core/commen/widget/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingUpBottom extends StatelessWidget {
  const SingUpBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
        duration: 600,
        child:CustomLinearButton(
          onPressed: (){},
          child: TextApp(
            text: context.translate(LangKeys.signUp),
            theme: context.textStyle.copyWith(
              fontSize: 18.sp, fontWeight: FontWeightHelper.bold
            ),
          ),
        ));
  }
}
