import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/SearchPAge/ButSintoma.dart';
import 'package:saluddirecta_v2/elementosExt/imag.dart';

class NewListSint extends StatelessWidget {
  const NewListSint({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: newSint.length,
              itemBuilder: (context, i) => ButSintoma(
                imageAssetPath: newSint[i]['imageAssetPath']!,
                feel: newSint[i]['feel']!,
                textN: newSint[i]['textN']!,
                content: newSint[i]['content']!,
            )
    );
  }
}