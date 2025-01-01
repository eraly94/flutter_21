import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

AppBar MyAppBar() {
  return AppBar(
    centerTitle: false,
    backgroundColor: AppColors.appBarBackgroundColor,
    title: const Text(
      'News Agrigator',
      style: AppTextStyles.title,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.more_vert,
          color: AppColors.scaffoldBackgroundColor,
        ),
      ),
    ],
  );
}
