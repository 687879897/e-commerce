
import 'package:flutter/material.dart';

import '../../../../../core/commen/widget/admin_app_bar.dart';
import '../../../../../core/style/colors/colors_dark.dart';

class AddProductsScreen extends StatelessWidget {
  const AddProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        title: 'Product',
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
      ),
      body:Center(
        child: Text("Product"),
      ),
    );
  }
}
