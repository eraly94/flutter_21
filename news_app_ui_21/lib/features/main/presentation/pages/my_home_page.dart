import 'package:flutter/material.dart';
import 'package:news_app_ui_21/core/theme/app_colors.dart';
import 'package:news_app_ui_21/features/main/data/models/news_api_model.dart';
import 'package:news_app_ui_21/features/main/data/service.dart';
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
        body: FutureBuilder(
          future: NewsService().fetchData(),
          builder:
              (BuildContext context, AsyncSnapshot<NewsApiModel?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (snapshot.connectionState == ConnectionState.none) {
              return Center(
                child: Text('Unknown data'),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              return RefreshIndicator(
                onRefresh: () async {},
                child: ListView.builder(
                  itemCount: snapshot.data!.articles!.length,
                  itemBuilder: (context, index) {
                    final data = snapshot.data!.articles;
                    return NewCard(
                      index: index,
                      data: data,
                    );
                  },
                ),
              );
            }
            return Text('Error');
          },
        ),
        floatingActionButton: SearchButton(),
      ),
    );
  }
}
