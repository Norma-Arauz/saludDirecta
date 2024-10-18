import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/Capa_Datos/newElem.dart';
import 'package:saluddirecta_v2/Capa_Negocio/newListDoc.dart';

class Newlistdoc extends StatelessWidget {
  const Newlistdoc({super.key});

      @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listVDoc.length,
        itemBuilder: (context, i) => Med(
          imageAssetPath: listVDoc[i]['imageAssetPath']!,
          nameDoc: listVDoc[i]['nameDoc']!,
          espec: listVDoc[i]['espec']!,
          hospital: listVDoc[i]['hospital']!,
          estado: listVDoc[i]['estado']!,
        ),
      );
  }
}
