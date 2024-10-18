import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/Capa_Datos/imag.dart';
import 'package:saluddirecta_v2/Capa_Negocio/NewListItem.dart';

class NewList extends StatelessWidget {
  const NewList({Key? key}): super (key : key);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsrItems.length,
        itemBuilder: (context, i) => NewsListItem(
          imageAssetPath: newsrItems[i]['imageAssetPath']!,
          category: newsrItems[i]['category']!,
          title: newsrItems[i]['title']!,
          content: newsrItems[i]['content']!,
          author: newsrItems[i]['author']!,
          authorImageAssetPath: newsrItems[i]['authorImageAssetPath']!,
          date: DateTime.parse(newsrItems[i]['date']!),
        ),
      );
  }
}