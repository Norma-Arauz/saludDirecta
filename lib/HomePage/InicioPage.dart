import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/CitaPage/CitaPage.dart';
import 'package:saluddirecta_v2/HomePage/HomePage.dart';
import 'package:saluddirecta_v2/PerfilPage/PerfilPage.dart';
import 'package:saluddirecta_v2/SearchPAge/SearchPage.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {

  int _selectedTab = 0;

  final List<Widget> _page =[
    HomePage(),
    SearchPage(),
    CitaPage(),
    PerfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: _page[_selectedTab],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedTab,
        height: 60,
        items: <Widget>[
            _builNavItem(Icons.home, _selectedTab == 0),
            _builNavItem(Icons.search, _selectedTab == 1),
            _builNavItem(Icons.pages, _selectedTab == 2),
            _builNavItem(Icons.supervised_user_circle, _selectedTab == 3),
        ],

      //Color de la barra
      color: Colors.blue,
        //Color de fondo del boton
      buttonBackgroundColor: Colors.white,
      backgroundColor: Colors.transparent,

      //curva de la animacion
      animationCurve: Curves.easeInOut,
      

      //Duracion de la animacion
      animationDuration: Duration(milliseconds: 300),

      onTap: (index){
        setState(() {
          _selectedTab = index;
        });
      },
      ),
    );
  }

  Widget _builNavItem(IconData icon, bool isSelected) {
    return Icon(icon,size: 30, color: isSelected ? Colors.blue : Colors.white);
  }
}