// ignore_for_file: camel_case_types, must_be_immutable


import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/widgets/news_tile_widget.dart';




class news_tile_list extends StatelessWidget {
  

  news_tile_list({super.key,required this.articales});
  
List<ArticalModel> articales ;
  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articales.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: news_tile(artical: articales[index]),
            );
          }));
  }
}
