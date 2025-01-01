import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../data/models/news_model.dart';

class NewCard extends StatelessWidget {
  const NewCard({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Card(
            child: Row(children: [
              Image.asset(newsList[index].image,
                  width: 130, height: 115, fit: BoxFit.cover),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        newsList[index].date,
                        style: AppTextStyles.mainText,
                      ),
                      Text(newsList[index].description,
                          style: AppTextStyles.mainText),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
        const Divider(
          thickness: 2,
        )
      ],
    );
  }
}
