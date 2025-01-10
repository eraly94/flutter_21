import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          color: Color(0xFFffd4cc),
          offset: const Offset(5, 15),
          blurRadius: 15,
        )
      ]),
      child: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppColors.orange,
        child: const Icon(
          Icons.search,
          color: AppColors.scaffoldBackgroundColor,
        ),
        onPressed: () {},
      ),
    );
  }
}
