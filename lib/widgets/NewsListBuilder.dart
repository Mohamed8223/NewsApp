// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile_listview.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key,required this.catogery});
  final String catogery;

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var futer;
  @override
  void initState() {
    super.initState();
    futer=NewsService(Dio()).getnews(category: widget.catogery);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: futer,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return news_tile_list(articales: snapshot.data !);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('oops an erorr'),
          );
        } else {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
