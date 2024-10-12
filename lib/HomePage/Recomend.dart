import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/HomePage/NewList.dart';

class Recomend extends StatefulWidget {
  const Recomend({super.key});

  @override
  State<Recomend> createState() => _RecomendState();
}

class _RecomendState extends State<Recomend> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(20,30,20,16),
        child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const Text(
              'Recomendaciones',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  ),
              ),
              const SizedBox(
                height:25,
              ),
              SizedBox(
                height: 300,
                child: const NewList(),
              ),
                  ],
                ),
                ),
               // ),
        );
      //],
      /* ),
      );*/
  }
}