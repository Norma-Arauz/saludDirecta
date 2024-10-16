import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/Capa_Datos/NewList.dart';
import 'package:saluddirecta_v2/Capa_Datos/NewListSint.dart';
import 'package:saluddirecta_v2/Capa_Negocio/searchBar.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
              child:Column(
                children: [
                  const SearchB(),
                  const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                    'Opciones de Busqueda Rapida',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                          height: 0,
                      ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                //Bloque de busqueda rapida
                const BusquedFast(),
                const SizedBox(
                  height: 10,
                ),
                //Bloque de los sintomas
                const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                    'Sintomas Comunes',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                          height: 0,
                      ),
                  ),
                ),
                    //Bottom del sintoma
                  const SizedBox(
                        height: 50,
                        child: NewListSint(),
                      ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                padding: const EdgeInsets.fromLTRB(0,15,20,16),
                child: const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        SizedBox(
                              height: 400,
                              child: NewList(),
                            ),
                      ],
                      ),
                ),
              ),
            ], //Children
        ),
      ),
      ),
    );
  }
}