import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app_ui_21/features/main/data/models/news_api_model.dart';
import 'package:date_format/date_format.dart';
import '../../../../core/theme/app_text_styles.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 8),
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
                          news?.publishedAt != null
                              ? DateFormat.MMMEd()
                                  .add_jm()
                                  .format(DateTime.parse(news!.publishedAt!))
                              : 'Unknown Date',
                          style: AppTextStyles.mainText,
                        ),
                        Text(news?.description ?? 'Unknown Description',
                            style: AppTextStyles.mainText),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              news?.url ?? 'Unknown Url',
                              style: AppTextStyles.linkText,
                              overflow: TextOverflow.ellipsis,
                            )),
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
      ),
    );
  }
}
