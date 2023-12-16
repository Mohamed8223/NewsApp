// ignore_for_file: camel_case_types


import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsListBuilder.dart';
import 'package:news_app/widgets/category_card_list.dart';

class home_view extends StatelessWidget {
  const home_view({super.key});
  final String category='general';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.yellow),
            ),
          ],
        ),
      ),
      body:  Padding(
        padding:const EdgeInsets.all(16.0),
        child: CustomScrollView(
          physics:const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: category_card_list(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
           NewsListBuilder(catogery: category,)
          ],
        ),
      ),
    );
  }
}
