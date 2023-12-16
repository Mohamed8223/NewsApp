// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';


class news_tile extends StatelessWidget {
  const news_tile({super.key,required this.artical});

  final ArticalModel artical;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            artical.image??'https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/384101766_807334318067453_7067874729733208080_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=_j62TVX9EmMAX8b3npr&_nc_ht=scontent.fcai20-6.fna&oh=00_AfAiJoOV-hLVb2dubcRl7iVqv2RGGXEpeEmX7CZokaDDDw&oe=6582916C',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
         Text(
          artical.title??'ilghdilsfg',
          maxLines: 2,
          style:const TextStyle(
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
         Text(
          artical.subtitle??"jsgflo;djsfg",
          maxLines: 2,
          style:const TextStyle(
            fontSize: 20,
            color: Colors.black45,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
