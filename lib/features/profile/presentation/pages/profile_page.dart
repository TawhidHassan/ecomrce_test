import 'package:flutter/material.dart';

import '../../../../core/config/color/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColorx,
    appBar: AppBar(
    title: Text('Profile'),),
    );
  }
}
