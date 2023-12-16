// ignore_for_file: camel_case_types

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile_widget.dart';

class news_tile_list extends StatefulWidget {
  const news_tile_list({super.key});

  @override
  State<news_tile_list> createState() => _news_tile_listState();
}

class _news_tile_listState extends State<news_tile_list> {
  List<ArticalModel> articales = [];
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    getgeneralnews();
  }

  Future<void> getgeneralnews() async {
    articales = await NewsService(Dio()).getnews(category: 'general');
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articales.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: news_tile(
                artical: articales[index],
              ),
            );
          }));
  }
}
