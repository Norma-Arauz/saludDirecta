import 'package:flutter/material.dart';

class NewsListItem extends StatelessWidget {
  final String title;
  final String content;
  final String author;
  final String category;
  final String authorImageAssetPath;
  final String imageAssetPath;
  final DateTime date;

  const NewsListItem({
    Key? key,
    required this.title,
    required this.author,
    required this.category,
    required this.authorImageAssetPath,
    required this.imageAssetPath,
    required this.date,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        ClipRRect(
          borderRadius:  BorderRadius.circular(20),
          child:
            Image.asset(
              imageAssetPath,
              width: 150,
              height: 150,
              ),
          ),
        ],
      ),
    );
}
}