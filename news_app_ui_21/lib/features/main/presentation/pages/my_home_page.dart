import 'package:flutter/material.dart';
import 'package:news_app_ui_21/core/theme/app_colors.dart';
import 'package:news_app_ui_21/core/theme/app_text_styles.dart';

import '../../data/models/news_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: AppBar(
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
        ),
        body: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
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
          },
        ),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: AppColors.orange,
          child: const Icon(
            Icons.search,
            color: AppColors.scaffoldBackgroundColor,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
