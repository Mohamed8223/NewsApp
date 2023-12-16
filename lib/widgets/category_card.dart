// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/categoryView.dart';

class category_card extends StatelessWidget {
  const category_card({super.key,required this.model});
  final CategoryModel  model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (model.categoryName =='Busines') {
           Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CategoryView(catogerry: 'business',);
        },));
        }else if(model.categoryName =='Technology') {
           Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CategoryView(catogerry: 'technology',);
        },));
        }else if(model.categoryName =='Science') {
           Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CategoryView(catogerry: 'science',);
        },));
        }else if(model.categoryName =='Entertainment') {
           Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CategoryView(catogerry: 'entertainment',);
        },));
        }else if(model.categoryName =='General') {
           Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CategoryView(catogerry: 'general',);
        },));
        }else if(model.categoryName =='Sports') {
           Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CategoryView(catogerry: 'sports',);
        },));
        }else if(model.categoryName =='Health') {
           Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CategoryView(catogerry: 'health',);
        },));
        }

      },
      child: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Container(
            width: 160,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(model.image),fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(12)),
            child: Center(
              child:  Text(
                model.categoryName,
                style:const TextStyle(color: Colors.white),
              ),
            ),
            
          ),
        ),
    );
  }
}