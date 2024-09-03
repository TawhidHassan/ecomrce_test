import 'package:flutter/material.dart';

import '../../../../core/config/color/app_colors.dart';

class LikesPage extends StatelessWidget {
  const LikesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColorx,
    appBar: AppBar(
    title: Text('Likes'),),
    );
  }
}
