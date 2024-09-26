import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/HomePage/RecTem.dart';

class Recomend extends StatefulWidget {
  const Recomend({super.key});

  @override
  State<Recomend> createState() => _RecomendState();
}

class _RecomendState extends State<Recomend> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Center(
        child: Column(
          children: [
        Text(
        'Recomendaciones',
        style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
            height: 0,
            ),
        ),
        SizedBox(
          height:25,
        ),
          RecTem(),
        SizedBox(
          height:25,
        ),
          RecTem2(),
          ]
        ),
      ),

      );
  }
}