// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class category_card_list extends StatelessWidget {
  const category_card_list({super.key});

  final List<CategoryModel> category = const [
    CategoryModel(image: 'assets/business.avif', categoryName: 'Busines'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/general.avif', categoryName: 'General'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/sports.avif', categoryName: 'Sports'),
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: 100,
         child: ListView.builder(
          physics:const BouncingScrollPhysics(),
           itemCount: category.length,
           scrollDirection: Axis.horizontal,
           itemBuilder: (context, index) => category_card(model: category[index]),
         ),
       );
  }
}