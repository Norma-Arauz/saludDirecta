import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/HomePage/NewListItem.dart';
import 'package:saluddirecta_v2/elementosExt/imag.dart';

class NewList extends StatelessWidget {
  const NewList({Key? key}): super (key : key);


  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, i) => NewsListItem(
          imageAssetPath: newsrItems[1]['imageAssetPath']!,
          category: newsrItems[1]['category']!,
          title: newsrItems[1]['title']!,
          content: newsrItems[1]['content']!,
          author: newsrItems[1]['author']!,
          authorImageAssetPath: newsrItems[1]['authorImageAssetPath']!,
          date: DateTime.parse(newsrItems[1]['date']!),
        ),
        childCount: newsrItems.length,
      )
    );
  }
}