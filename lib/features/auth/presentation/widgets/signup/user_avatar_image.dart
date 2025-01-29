import 'package:flutter/material.dart';

import '../../../../../core/style/images/app_images.dart';

class UserAvater extends StatelessWidget {
  const UserAvater({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Image.asset(AppImages.userAvatar),
    );
  }
}
