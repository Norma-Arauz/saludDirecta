import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/Capa_Negocio/IdPacient.dart';


class InicioSesion extends StatefulWidget {
  const InicioSesion ({super.key});

  @override
  State<InicioSesion> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<InicioSesion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color(0xFF0074D9),
      appBar: AppBar(
      backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      body:
        IdPacient(),
    );
  }
}

