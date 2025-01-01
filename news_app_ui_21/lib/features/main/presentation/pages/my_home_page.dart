import 'package:flutter/material.dart';
import 'package:news_app_ui_21/core/theme/app_colors.dart';
import '../../data/models/news_model.dart';
import '../methods/my_app_bar.dart';
import '../widgets/news_card_widget.dart';
import '../widgets/search_button_widget.dart';

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
        appBar: MyAppBar(),
        body: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return NewCard(
              index: index,
            );
          },
        ),
        floatingActionButton: SearchButton(),
      ),
    );
  }
}
