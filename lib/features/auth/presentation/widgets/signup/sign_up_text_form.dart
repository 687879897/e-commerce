import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/commen/animations/animate_do.dart';
import '../../../../../core/commen/widget/custom_text_field.dart';
import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/utils/app_regex.dart';

class SingUpTextForm extends StatefulWidget {
  const SingUpTextForm({super.key});

  @override
  State<SingUpTextForm> createState() => _SingUpTextFormState();
}

class _SingUpTextFormState extends State<SingUpTextForm> {
  @override
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomFadeInRight(
          duration: 200,
          child: CustomTextField(
            controller:TextEditingController(
            ) ,
            hintText: context.translate(LangKeys.fullName),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 4) {
                return context.translate(LangKeys.validName);
              }
              return null;
            },

          ),

        ),
        SizedBox(height: 25.h,),
        CustomFadeInRight(
          duration: 200,
          child: CustomTextField(
            controller:TextEditingController(
            ) ,
            hintText: context.translate(LangKeys.email),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (!AppRegex.isEmailValid('')) {
                return context.translate(LangKeys.validEmail);
              }
              return null;
            },

          ),

        ),
        SizedBox(height: 25.h,),
        CustomFadeInRight(
          duration: 200,
          child: CustomTextField(
            controller:TextEditingController(
            ) ,
            hintText: context.translate(LangKeys.password),
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return context.translate(LangKeys.validPasswrod);
              }
              return null;
            },
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isShowPassword = !isShowPassword;
                });
              },
              icon: Icon(
                isShowPassword ? Icons.visibility_off : Icons.visibility,
                color: context.color.textColor,
              ),
            ),


          ),

        ),
      ],
    );
  }
}
