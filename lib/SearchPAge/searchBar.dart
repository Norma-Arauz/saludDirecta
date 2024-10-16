import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/SearchPAge/ButtonFast.dart';


//Barra para buscar noticias
class SearchB extends StatefulWidget{
  const SearchB ({super.key});

  @override
    State<SearchB> createState() => _SearchBar();
}

class _SearchBar extends State<SearchB> {

  @override
  Widget build(BuildContext context)
  {
    return Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
            style:const TextStyle(color: Color.fromARGB(255, 29, 132, 216)),
              decoration:InputDecoration(
                  filled:true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                hintText:"Buscar",
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.blue.shade900,
      ),
    ),
      const SizedBox(
        height: 5,
        ),
    ],
    ),
    );
  }
}

  class BusquedFast extends StatefulWidget
  {
    const BusquedFast({super.key});

    @override
      State<BusquedFast> createState() => _BusquedFast();
  }

 //Apartado de buesqueda Rapida
  class _BusquedFast extends State<BusquedFast> {

    @override
    Widget build(BuildContext context) {
      return const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              //Acceso rapido a doctores
              ButtonFast(
                iconImagePath: 'assets/VentanaDoctor.png',
                buttonText: 'Doctores',
                num: 1,
                ),

              //Acceso rapido Medicamentos
              ButtonFast(
                iconImagePath: 'assets/Pildora.png',
                buttonText: 'Medicina',
                num: 2,
                ),

              //Acceso rapido Centro de salud
              ButtonFast(
                iconImagePath: 'assets/CentrodeSalud.png',
                buttonText: 'Centro\nsalud',
                num: 3,
                ),
          ],
        );
    }
  }
