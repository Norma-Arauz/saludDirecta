import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/Capa_Datos/imag.dart';
import 'package:saluddirecta_v2/Capa_Negocio/ButSintoma.dart';


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