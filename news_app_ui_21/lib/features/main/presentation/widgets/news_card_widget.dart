import 'package:flutter/material.dart';
import 'package:news_app_ui_21/features/main/data/models/news_api_model.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../data/models/news_model.dart';

class NewCard extends StatelessWidget {
  const NewCard({
    super.key,
    required this.index,
    required this.data,
  });
  final int index;
  final List<Articles>? data;
  @override
  Widget build(BuildContext context) {
    final news = data?[index];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Card(
            child: Row(children: [
              SizedBox(
                width: 130,
                height: 115,
                child: Image.network(news?.urlToImage ?? 'No Picture',
                    fit: BoxFit.cover),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        news?.title ?? 'Unknown Title',
                        style: AppTextStyles.mainText,
                      ),
                      Text(news?.description ?? 'Unknown Description',
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
