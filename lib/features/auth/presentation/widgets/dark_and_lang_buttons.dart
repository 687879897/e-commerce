
import 'package:asroo_store/core/commen/widget/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/commen/animations/animate_do.dart';
import '../../../../core/commen/widget/custom_linear_button.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomFadeInRight(
         duration: 400,
            child: CustomLinearButton(
              onPressed: (){},
              child: Icon(Icons.light_mode_rounded,color: Colors.white,)
              ,
            )
            ),
        CustomFadeInLeft(
          duration: 400,
            child:CustomLinearButton(
              onPressed: (){},
              height: 44.h,
              width: 100.w,
              child: TextApp(
                text: context.translate(LangKeys.language),
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.bold
                ),

              ),
            )
           )
      ],
    );
  }
}
