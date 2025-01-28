import 'package:asroo_store/core/commen/animations/animate_do.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/commen/widget/custom_text_field.dart';
import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/utils/app_regex.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
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
