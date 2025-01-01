import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: AppColors.orange,
      child: const Icon(
        Icons.search,
        color: AppColors.scaffoldBackgroundColor,
      ),
      onPressed: () {},
    );
  }
}
