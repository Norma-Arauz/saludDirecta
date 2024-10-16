import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/SearchPAge/listDoct.dart';
import 'package:saluddirecta_v2/SearchPAge/listMed.dart';
import 'package:saluddirecta_v2/SearchPAge/listcentroSal.dart';

//Botones de opciones de busqueda rapida
class ButtonFast extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  final int num;

  const ButtonFast({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
    required this.num,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(num == 1)
        {
        Navigator.push( context,
          MaterialPageRoute(builder: (context) =>const ListDoc()));
        }
        if(num == 2)
        {
        Navigator.push( context,
          MaterialPageRoute(builder: (context) => const Listmed()));
        }
        if(num == 3)
        {
        Navigator.push( context,
          MaterialPageRoute(builder: (context) => const listCentroS()));
        }
      },
    child: Container(
      height: 105,
      width: 105,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 1,
          ),
        ],
      ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          Container( //Icono
            width: 50,
            height: 50,
            child: Image.asset(
              iconImagePath,
              ),
          ),
          const SizedBox(
            height: 5,
          ),
          //Texto
          Flexible(
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 1.2, // Espaciado entre líneas,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
      ],
    ),
    ),
    );
  }
}