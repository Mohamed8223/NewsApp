import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsListBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key,required this.catogerry});
  final String catogerry;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: CustomScrollView(
            physics:const BouncingScrollPhysics(),
            slivers: [
             NewsListBuilder(catogery: catogerry,)
            ],
          ),
        ),
      ),
    
    );
  }
}