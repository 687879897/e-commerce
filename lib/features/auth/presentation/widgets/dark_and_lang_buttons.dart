
import 'package:asroo_store/core/commen/widget/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app/app_cubit/app_cubit.dart';
import '../../../../core/commen/animations/animate_do.dart';
import '../../../../core/commen/widget/custom_linear_button.dart';
import '../../../../core/language/app_localizations.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});


  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      CustomFadeInRight(
      duration: 400,
      child: CustomLinearButton(
        onPressed: cubit.changeAppThemeMode,
        child: Icon(
          cubit.isDark
              ? Icons.light_mode_rounded
              : Icons.dark_mode_rounded,
          color: Colors.white,
        ),
      ),
    ),
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            onPressed: () {
              if (AppLocalizations.of(context)!.isEnLocale) {
                cubit.toArabic();
              } else {
                cubit.toEnglish();
              }
            },
            height: 44.h,
            width: 100.w,
            child: TextApp(
              text: context.translate(LangKeys.language),
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
