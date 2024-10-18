import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/Capa_Datos/imag.dart';
import 'package:saluddirecta_v2/Capa_Negocio/NewListItem.dart';


class NewNot extends StatelessWidget {
  const NewNot({Key? key}): super (key : key);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsNot.length,
        itemBuilder: (context, i) => NewsListItem(
          imageAssetPath: newsNot[i]['imageAssetPath']!,
          category: newsNot[i]['category']!,
          title: newsNot[i]['title']!,
          content: newsNot[i]['content']!,
          author: newsNot[i]['author']!,
          authorImageAssetPath: newsNot[i]['authorImageAssetPath']!,
          date: DateTime.parse(newsNot[i]['date']!),
        ),
      );
  }
}