import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/Capa_Presentacion/HomePage.dart';
import 'package:saluddirecta_v2/Capa_Presentacion/InicioPage.dart';
import 'package:saluddirecta_v2/Capa_Presentacion/InicioSesion.dart';


void main() {
  runApp(saludDirecta());
}

  class saludDirecta extends StatefulWidget{
    @override
    _saludDirectaState createState() => _saludDirectaState();
  }

  class _saludDirectaState extends State<saludDirecta>{
    int _pagAct = 0;

    @override
    Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "InicioSesion",
        routes: {
          "InicioSesion":(context) => const InicioSesion(),
          "home":(context) => const HomePage(),
          "Inicio":(context) => const InicioPage(),
        },
      );
  }
}

  
